rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

# gcp_study <- readRDS(file=path(r_objects_folder, "060_gcp_study.rds"))
gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_lookup_studies <- readRDS(file=path(r_objects_folder, "010_gcp_lookup_studies.rds"))
gcp_df <- readRDS(file=path(r_objects_folder, str_c("060_gcp_df_", gcp_version, ".rds")))


empty_item_bank <- tibble(
  item                = NA_character_,
  item_number         = NA_real_, 
  parameter_type      = NA_character_,
  parameter_threshold = NA_character_,
  parameter_T         = NA_character_,
  source              = NA_character_,
  estimate            = NA_real_,
  estimate.stdyx      = NA_real_,
  threshold           = NA_integer_,
  T                   = NA_integer_
)

my_rename_function <- function(df) {
  df %>%
    rename(study_name_short = study_name_short_dup)
}

gcp_df_xxx <- gcp_df %>%
  mutate(study_name_short2 = factor(Study, ordered = TRUE,
                                    levels = gcp_lookup_studies %>% 
                                      arrange(Study_number) %>% pull(Study)),
         color.vec = c("#8dd3c7", "#ffffb3", "#bebada", "#fb8072", "#80b1d3", "#fdb462", "#b3de69", "#fccde5", "#d9d9d9"
                       # , 
                       # "#bc80bd"
                       ),
         )
gcp_lookup_studies_foo <- gcp_lookup_studies %>%
  rename(study_wave_number = Study_number)

foo_fxn <- function(df) {
  df %>%
    pull(item) %>%
    str_c(collapse = " ")
}
# Rename variables so they match what is expected in the get_harmonization_object function
foo <- gcp_df_xxx %>%
  mutate(study_order = Study_number) %>%
  rename(study_wave_number = Study_number) %>%
  rename(study_name_long = Title) %>%
  rename(study_name_short = Study) %>%
  mutate(study_name_short_dup = study_name_short,
         items_to_link = map(study_items_df, foo_fxn)) %>%
  select(study_order, study_wave_number, study_name_long, 
         potential_item_bank_list, any_study_items_in_bank,
         n_study_items_in_bank, n_new_items_to_bank,
         items_to_link,
         study_name_short, study_name_short2, color.vec, study_name_short_dup)

goo <- foo %>%
  group_by(study_name_short) %>%
  nest() %>%
  rename(gcp.study = data) %>%
  mutate(gcp.study = map(gcp.study, my_rename_function)) %>%
  left_join(gcp_df_xxx, by = c("study_name_short" = "Study"))

gcp_study_nested <- goo %>%
  mutate(study_wave_number = map_dbl(gcp.study, pull, study_wave_number),
         h_obj             = pmap(list(study_df = gcp.study,  
                                       study.wave.number.identifier = study_wave_number,
                                       response.df = response_data_long,
                                       item_df = study_items_df,
                                       response.df.all = response_data_all_long),
                                  HarmonizationTools::get_harmonization_object))


saveRDS(gcp_study_nested, file=path(r_objects_folder, str_c("070_gcp_study_nested_", gcp_version, ".rds")))
saveRDS(empty_item_bank, file=path(r_objects_folder, "070_empty_item_bank.rds"))


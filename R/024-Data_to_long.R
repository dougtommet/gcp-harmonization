rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))


gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_df <- readRDS(file=path(r_objects_folder, str_c("023_gcp_items_df_", gcp_version, ".rds")))
gcp_linking_items <- readRDS(file=path(r_objects_folder, str_c("020_gcp_linking_items_", gcp_version, ".rds")))

# Merging in the item linking data to the main dataframe
gcp_df <- gcp_df %>%
  left_join(gcp_linking_items %>% 
              group_by(study_b) %>%
              nest() %>%
              rename(linking_items = data),
            by = c("Study" = "study_b")
  )

get_study_items <- function(df) {
  df %>% 
    filter(stringr::str_detect(item, "^Q"))
}
# Pulling out the study items into their own tibble & column
gcp_df <- gcp_df %>%
  mutate(study_items_df = purrr::map(item_data, get_study_items))
gcp_df <- gcp_df %>%
  mutate(study_items = purrr::map(study_items_df, pull, "item"))


variable_select_fxn <- function(df, aux_vars, item_vars) {
  df %>%
    select(newid, study_wave_number, all_of(aux_vars), all_of(item_vars))

}
# Creating a tibble of response data containing only the items and auxillary variables
gcp_df <- gcp_df %>%
  mutate(response_data_filtered = purrr::pmap(list(df=response_data, 
                                                   aux_vars=Aux_variables, 
                                                   item_vars = study_items), 
                                              variable_select_fxn),
         response_data_all_filtered = purrr::pmap(list(df=response_data_all, 
                                                   aux_vars=Aux_variables, 
                                                   item_vars = study_items), 
                                              variable_select_fxn))

gcp_df <- gcp_df %>%
  mutate(n_linking_items = purrr::map(linking_items, nrow))

# Function to rename the items to the item they link to & to convert the response data to long
item_rename_fxn <- function(study_items_df, response_df, linking_items_df) {
  n_linking_items <- nrow(linking_items_df)
  study_items <- study_items_df %>%
    pull(item)
  
  if (!is.null(n_linking_items)) {
    for (i in 1:n_linking_items) {

      item_a <- linking_items_df[["item_a"]][[i]]
      item_b <- linking_items_df[["item_b"]][[i]]

      study_items <- study_items[!study_items %in% c({{item_b}})]
      study_items <- c(study_items, {{item_a}})

      response_df <- response_df %>%
        rename({{item_a}} := {{item_b}})

    }
  }

  response_df_long <- response_df %>%
    pivot_longer(cols = all_of(study_items), names_to = "item", values_to = "response")

  if (!is.null(linking_items_df)) {
    study_items_df <- study_items_df %>%
      left_join(linking_items_df, by = c("item" = "item_b")) %>%
      rename(item_original = item) %>%
      mutate(item = case_when(!is.na(item_a) ~ item_a,
                              is.na(item_a) ~ item_original)) %>%
      select(-item_a, -item_label_a, -study_a, -set_a, -item_label_b, -set_b, -link_curator, -Notes) %>%
      select(item, everything())
  }
  

  list(items_df = study_items_df, response_long_df = response_df_long)
  
}

# Convert the data to long for the calibration data and full data
gcp_df <- gcp_df %>%
  mutate(foo = purrr::pmap(list(study_items_df = study_items_df, 
                                response_df = response_data_filtered, 
                                linking_items_df = linking_items), 
                           item_rename_fxn),
         response_data_long = purrr::map(foo, pluck, "response_long_df"),
         goo = purrr::pmap(list(study_items_df = study_items_df, 
                                response_df = response_data_all_filtered, 
                                linking_items_df = linking_items), 
                           item_rename_fxn),
         response_data_all_long = purrr::map(goo, pluck, "response_long_df"),
         study_items_df = purrr::map(foo, pluck, "items_df")) %>%
  select(-foo, -goo)

gcp_df <- gcp_df %>%
  mutate(study_items = purrr::map(study_items_df, pull, "item"))

saveRDS(gcp_df, file=path(r_objects_folder, str_c("024_gcp_df_", gcp_version, ".rds")))


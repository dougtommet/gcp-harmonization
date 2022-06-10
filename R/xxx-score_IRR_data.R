
### 010-Read_data
sheet_path <- googledrive::drive_get("SAGES GCP Harmonization Codebook")
gcp_irr_items <- googlesheets4::read_sheet(sheet_path, sheet = "Items SAGESII IRR")
gcp_irr_items <- gcp_irr_items %>%
  mutate(source_item = case_when(source_item=="NA" ~ NA_character_,
                                 TRUE ~ source_item),
         recode = case_when(recode=="NA" ~ NA_character_,
                            TRUE ~ recode),
         value_label = case_when(value_label=="NA" ~ NA_character_,
                                 TRUE ~ value_label),
         source_file = case_when(source_file=="NA" ~ NA_character_,
                                 TRUE ~ source_file)
  )

gcp_linking_items <-    readRDS(file=path(r_objects_folder, "010_gcp_linking_items.rds"))
gcp_lookup_studies <-   readRDS(file=path(r_objects_folder, "010_gcp_lookup_studies.rds"))

sages_irr <- read_csv(fs::path_home("Documents", "dwork", "SAGES", "Projects", "IRR", "Data", "sagesII_irr_for_gcp.csv"))

sages_irr <- sages_irr %>%
  mutate(timefr = str_remove(redcap_event_name, "mon_arm_1"),
         timefr = case_when(redcap_event_name == "bsln_arm_1" ~ "0",
                            TRUE ~ timefr),
         timefr = as.numeric(timefr)) %>%
  select(-redcap_event_name) %>%
  mutate(newid = str_c(studyid, "_", timefr)) %>%
  select(studyid, timefr, everything())

sages_irr_inperson_df <- sages_irr %>%
  filter(str_detect(vin_loc, "1"))

sages_irr_telephone_df <- sages_irr %>%
  filter(str_detect(vin_loc, "2"))

sages_irr_video_df <- sages_irr %>%
  filter(str_detect(vin_loc, "3"))

### 020-Transform_data
gcp_version <- "GCPv2c"
if (gcp_version == "GCPv2c"){
  gcp_alt <- c("GCP-alt-1b", "GCP-alt-2c", "GCP-alt-3b")
}

gcp_irr_items <- gcp_irr_items %>%
  filter(Set %in% c("GCP", "GCP-intermediate variable", gcp_alt))
gcp_linking_items <- gcp_linking_items %>%
  filter(set_b %in% c("GCP", gcp_alt))

gcp_irr_items <- gcp_irr_items %>%
  mutate(item_number = case_when(str_detect(item, "^Q") ~ str_sub(item, 2)))


sagesII_inperson_irr_items_df <- gcp_irr_items %>%
  filter(study=="SAGESII_Inperson") 

sagesII_inperson_irr_items <- sagesII_inperson_irr_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_inperson_df_filtered <- sages_irr_inperson_df %>%
  mutate(study_wave_number = 3)

sagesII_telephone_irr_items_df <- gcp_irr_items %>%
  filter(study=="SAGESII_Telephone") 

sagesII_telephone_irr_items <- sagesII_telephone_irr_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_telephone_df_filtered <- sages_irr_telephone_df %>%
  mutate(study_wave_number = 4)

sagesII_video_irr_items_df <- gcp_irr_items %>%
  filter(study=="SAGESII_Video") 

sagesII_video_irr_items <- sagesII_video_irr_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_video_df_filtered <- sages_irr_video_df %>%
  mutate(study_wave_number = 5)

gcp_irr_df <- tibble(response_data_all = list(sagesII_inperson_df_filtered, 
                                               sagesII_telephone_df_filtered, 
                                               sagesII_video_df_filtered),
                      item_data = list(sagesII_inperson_irr_items_df, 
                                       sagesII_telephone_irr_items_df, 
                                       sagesII_video_irr_items_df))
gcp_irr_df <- gcp_irr_df %>%
  mutate(response_data_all = purrr::map(response_data_all, haven::zap_formats),
         response_data_all = purrr::map(response_data_all, haven::zap_label),
         response_data_all = purrr::map(response_data_all, haven::zap_labels)
  )

gcp_irr_df <- gcp_irr_df %>%
  bind_cols(gcp_lookup_studies %>%
              slice(c(4, 5, 6))
  )
gcp_irr_df <- gcp_irr_df %>%
  mutate(Aux_variables = list(c("timefr"), 
                              c("timefr"), 
                              c("timefr")
                              )
  )
### 021-Missing_values
# The function recode_missing_values_fxn is from 021-Missing_values.R
gcp_irr_df <- gcp_irr_df %>%
  mutate(hoo = purrr::map2(item_data, response_data_all, recode_missing_values_fxn),
         response_data_all = purrr::map(hoo, pluck, "response"),
         item_data = purrr::map(hoo, pluck, "items")
  ) %>%
  select(-hoo)

### 023-Item_recoding
# The function recode_transformation_fxn is from 023-Item_recoding.R
gcp_irr_df <- gcp_irr_df %>%
  mutate(hoo = purrr::map2(item_data, response_data_all, recode_transformation_fxn),
         response_data_all = purrr::map(hoo, pluck, "response"),
         item_data = purrr::map(hoo, pluck, "items")
  ) %>%
  select(-hoo)

### 024-Data_to_long

gcp_irr_df <- gcp_irr_df %>%
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
gcp_irr_df <- gcp_irr_df %>%
  mutate(study_items_df = purrr::map(item_data, get_study_items))
gcp_irr_df <- gcp_irr_df %>%
  mutate(study_items = purrr::map(study_items_df, pull, "item"))


variable_select_fxn <- function(df, aux_vars, item_vars) {
  df %>%
    select(newid, study_wave_number, all_of(aux_vars), all_of(item_vars))
  
}

gcp_irr_df <- gcp_irr_df %>%
  mutate(response_data_all_filtered = purrr::pmap(list(df=response_data_all, 
                                                       aux_vars=Aux_variables, 
                                                       item_vars = study_items), 
                                                  variable_select_fxn))

gcp_irr_df <- gcp_irr_df %>%
  mutate(n_linking_items = purrr::map(linking_items, nrow))

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


gcp_irr_df <- gcp_irr_df %>%
  mutate(goo = purrr::pmap(list(study_items_df = study_items_df, 
                                response_df = response_data_all_filtered, 
                                linking_items_df = linking_items), 
                           item_rename_fxn),
         response_data_all_long = purrr::map(goo, pluck, "response_long_df"),
         response_data_long = purrr::map(goo, pluck, "response_long_df"),
         study_items_df = purrr::map(goo, pluck, "items_df")) %>%
  select(-goo)

gcp_irr_df <- gcp_irr_df %>%
  mutate(study_items = purrr::map(study_items_df, pull, "item"))

### 070

my_rename_function <- function(df) {
  df %>%
    rename(study_name_short = study_name_short_dup)
}

gcp_irr_df_xxx <- gcp_irr_df %>%
  mutate(study_name_short2 = factor(Study, ordered = TRUE,
                                    levels = gcp_lookup_studies %>% 
                                      arrange(Study_number) %>% pull(Study)),
  )
gcp_lookup_studies_foo <- gcp_lookup_studies %>%
  rename(study_wave_number = Study_number)

foo_fxn <- function(df) {
  df %>%
    pull(item) %>%
    str_c(collapse = " ")
}
foo <- gcp_irr_df_xxx %>%
  mutate(study_order = Study_number) %>%
  rename(study_wave_number = Study_number) %>%
  rename(study_name_long = Title) %>%
  rename(study_name_short = Study) %>%
  mutate(study_name_short_dup = study_name_short,
         items_to_link = map(study_items_df, foo_fxn)) %>%
  select(study_order, study_wave_number, study_name_long, 
         items_to_link,
         study_name_short, study_name_short2, study_name_short_dup)

goo <- foo %>%
  group_by(study_name_short) %>%
  nest() %>%
  rename(gcp.study = data) %>%
  mutate(gcp.study = map(gcp.study, my_rename_function)) %>%
  left_join(gcp_irr_df_xxx, by = c("study_name_short" = "Study"))

gcp_irr_study_nested <- goo %>%
  mutate(study_wave_number = map_dbl(gcp.study, pull, study_wave_number),
         h_obj             = pmap(list(study_df = gcp.study,  
                                       study.wave.number.identifier = study_wave_number,
                                       response.df = response_data_long,
                                       item_df = study_items_df,
                                       response.df.all = response_data_all_long),
                                  HarmonizationTools::get_harmonization_object))

### 400 

gcp_study_nested_v2c <- gcp_irr_study_nested
item_bank_v2c <- read_csv(here("data", "gcp_item_bank_v2c.csv"))

gcp_long_df_v2c <- gcp_study_nested_v2c %>%
  select(response_data_all_long) %>%
  unnest(cols = c("response_data_all_long"))

my_score_fx <- function(l, study_name, item_bank, gcp_version) {
  
  if (gcp_version == "GCPv1") {
    gcp_long_df <- gcp_long_df_v1
  } else if (gcp_version == "GCPv2a") {
    gcp_long_df <- gcp_long_df_v2a
  } else if (gcp_version == "GCPv2b") {
    gcp_long_df <- gcp_long_df_v2b
  } else if (gcp_version == "GCPv2c") {
    gcp_long_df <- gcp_long_df_v2c
  }
  
  study_order <- l[["study_df"]][["study_order"]]
  if(!is.na(study_order)) {
    
    score_mplus_output_name <- str_c("score-sages_irr-",
                                     str_pad(l[["study_df"]][[c("study_order")]],
                                             width = 2, side = "left", pad = "0"),
                                     "-",
                                     study_name,
                                     "-mlr_", gcp_version)
    
    scores <- HarmonizationTools::cfa_score(h_obj              = l,
                                            item.bank          = item_bank,
                                            full_response_df   = gcp_long_df,
                                            id_variable        = "newid",
                                            st.savedata        = "save = fscores; file = 'f.dat';",
                                            st.analysis        = "estimator = MLR; COVERAGE = 0;",
                                            mplus.output.path  = here::here("mplus_ignore"),
                                            mplus.output       = score_mplus_output_name,
                                            name_response_df   = "response_df_all_filtered",
                                            runmplus           = TRUE)
    l$factor_scores <- scores
    
    return(l)
  }
  if(is.na(study_order)){
    return(l)
  }
  
}

gcp_study_nested_foo_v2c <- gcp_study_nested_v2c %>%
  mutate(h_obj = pmap(list(h_obj, study_name_short2), my_score_fx, item_bank = item_bank_v2c, gcp_version = "GCPv2c"))



# Pull out the factor scores to create a data frame to export
get_factor_scores <- function(l) {
  l[["factor_scores"]]
}


gcp_g_v2c <- gcp_study_nested_foo_v2c %>%
  ungroup() %>%
  mutate(f.scores = map(h_obj, get_factor_scores)) %>%
  select(study_name_short, f.scores) %>%
  unnest(c(f.scores)) %>%
  left_join(gcp_long_df_v2c %>% 
              select(newid, study_wave_number) %>% 
              distinct(), 
            by = c("newid" = "newid", "study_wave_number"="study_wave_number", "study_name_short" = "study_name_short")) %>%
  select(newid, study_name_short, study_wave_number, everything())


gcp_g_v2c <- gcp_g_v2c %>%
  separate(newid, into = c("newid", "timefr"), sep = "_") %>%
  mutate(gcp = (g*10)+50,
         timefr = as.numeric(timefr),
         interview_mode = case_when(study_wave_number %in% c(3, 4, 5) ~ str_sub(study_name_short, 9, -1))) %>%
  arrange(newid, timefr) 



sagesII_gcp <- gcp_g_v2c %>%
  filter(study_wave_number %in% c(3, 4, 5)) 
write_csv(sagesII_gcp, path(derivedfolder, "sagesII_irr_gcp_scored.csv"))



# foo <- gcp_study_nested_v2c %>%
#   select(response_data_all) %>%
#   ungroup() %>%
#   unnest(response_data_all)
# 
# foo %>%
#   filter(studyid %in% c("PF30678", "IR30678")) %>%
#   select(studyid, vdcat, Q466, Q566, Q666)
# 
# goo <- foo %>%
#   select(studyid, timefr, vdtrailb, Q534) %>%
#   mutate(irr = case_when(str_detect(studyid, "IR") ~ "r2",
#                          TRUE ~ "r1"),
#          newid = str_c(str_sub(studyid, 3, -1), "_", timefr)) %>%
#   select(-timefr) %>%
#   pivot_wider(id_cols = newid, names_from = irr, values_from = c(studyid, vdtrailb, Q534))
# 
# goo %>%
#   filter(Q534_r1 != Q534_r2 | 
#            (is.na(Q534_r1) & !is.na(Q534_r2)) | 
#            (!is.na(Q534_r1) & is.na(Q534_r2)) )
#          
# goo %>%
#   filter(Q433_r1 != Q433_r2 | 
#            (is.na(Q433_r1) & !is.na(Q433_r2)) | 
#            (!is.na(Q433_r1) & is.na(Q433_r2)) | 
#            Q633_r1 != Q633_r2 |   
#            (is.na(Q633_r1) & !is.na(Q633_r2) | 
#            (!is.na(Q633_r1) & is.na(Q633_r2)))  )
# 
# foo %>%
#   filter(studyid %in% c("PW20026", "IR20026")) %>%
#   select(starts_with("Q5"))
# 

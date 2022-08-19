rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))


gcp_study_nested_v1  <- readRDS(file=path(r_objects_folder, "250_gcp_study_nested_GCPv1.rds"))
gcp_study_nested_v2a <- readRDS(file=path(r_objects_folder, "250_gcp_study_nested_GCPv2a.rds"))
gcp_study_nested_v2b <- readRDS(file=path(r_objects_folder, "250_gcp_study_nested_GCPv2b.rds"))
gcp_study_nested_v2c <- readRDS(file=path(r_objects_folder, "250_gcp_study_nested_GCPv2c.rds"))
item_bank_v1 <- read_csv(here("data", "gcp_item_bank_v1.csv"))
item_bank_v2a <- read_csv(here("data", "gcp_item_bank_v2a.csv"))
item_bank_v2b <- read_csv(here("data", "gcp_item_bank_v2b.csv"))
item_bank_v2c <- read_csv(here("data", "gcp_item_bank_v2c.csv"))

gcp_long_df_v1 <- gcp_study_nested_v1 %>%
  select(response_data_all_long) %>%
  unnest(cols = c("response_data_all_long"))
gcp_long_df_v2a <- gcp_study_nested_v2a %>%
  select(response_data_all_long) %>%
  unnest(cols = c("response_data_all_long"))
gcp_long_df_v2b <- gcp_study_nested_v2b %>%
  select(response_data_all_long) %>%
  unnest(cols = c("response_data_all_long"))
gcp_long_df_v2c <- gcp_study_nested_v2c %>%
  select(response_data_all_long) %>%
  unnest(cols = c("response_data_all_long"))

# saveRDS(scdi.study.nested,  file=path(r_objects_folder, "400_scdi_study_nested.rds"))
# write_csv(scdi.g, path(derivedfolder, "scdi_factor_score.csv"))


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
    
    score_mplus_output_name <- str_c("score-",
                                     str_pad(l[["study_df"]][[c("study_order")]],
                                             width = 2, side = "left", pad = "0"),
                                     "-",
                                     study_name,
                                     "-mlr_", gcp_version)
    
    # scores <- HarmonizationTools::cfa_score(h_obj              = l,
    #                                         item.bank          = item_bank,
    #                                         full_response_df   = gcp_long_df,
    #                                         id_variable        = "newid",
    #                                         st.savedata        = "save = fscores(500 10); file = 'f.dat'; factors = g;",
    #                                         mplus.output.path  = here::here("mplus_ignore"),
    #                                         mplus.output       = score_mplus_output_name,
    #                                         name_response_df   = "response_df_filtered",
    #                                         runmplus           = TRUE)
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

gcp_study_nested_foo_v1 <- gcp_study_nested_v1 %>%
  mutate(h_obj = pmap(list(h_obj, study_name_short2), my_score_fx, item_bank = item_bank_v1, gcp_version = "GCPv1"))
gcp_study_nested_foo_v2a <- gcp_study_nested_v2a %>%
  mutate(h_obj = pmap(list(h_obj, study_name_short2), my_score_fx, item_bank = item_bank_v2a, gcp_version = "GCPv2a"))
gcp_study_nested_foo_v2b <- gcp_study_nested_v2b %>%
  mutate(h_obj = pmap(list(h_obj, study_name_short2), my_score_fx, item_bank = item_bank_v2b, gcp_version = "GCPv2b"))
gcp_study_nested_foo_v2c <- gcp_study_nested_v2c %>%
  mutate(h_obj = pmap(list(h_obj, study_name_short2), my_score_fx, item_bank = item_bank_v2c, gcp_version = "GCPv2c"))


# Pull out the factor scores to create a data frame to export
get_factor_scores <- function(l) {
  l[["factor_scores"]]
}
gcp_g_v1 <- gcp_study_nested_foo_v1 %>%
  ungroup() %>%
  mutate(f.scores = map(h_obj, get_factor_scores)) %>%
  select(study_name_short, f.scores) %>%
  unnest(c(f.scores)) %>%
  left_join(gcp_long_df_v1 %>% 
              select(newid, study_wave_number) %>% 
              distinct(), 
            by = c("newid" = "newid", "study_wave_number"="study_wave_number", "study_name_short" = "study_name_short")) %>%
  select(newid, study_name_short, study_wave_number, everything())

gcp_g_v2a <- gcp_study_nested_foo_v2a %>%
  ungroup() %>%
  mutate(f.scores = map(h_obj, get_factor_scores)) %>%
  select(study_name_short, f.scores) %>%
  unnest(c(f.scores)) %>%
  left_join(gcp_long_df_v2a %>% 
              select(newid, study_wave_number) %>% 
              distinct(), 
            by = c("newid" = "newid", "study_wave_number"="study_wave_number", "study_name_short" = "study_name_short")) %>%
  select(newid, study_name_short, study_wave_number, everything())

gcp_g_v2b <- gcp_study_nested_foo_v2b %>%
  ungroup() %>%
  mutate(f.scores = map(h_obj, get_factor_scores)) %>%
  select(study_name_short, f.scores) %>%
  unnest(c(f.scores)) %>%
  left_join(gcp_long_df_v2b %>% 
              select(newid, study_wave_number) %>% 
              distinct(), 
            by = c("newid" = "newid", "study_wave_number"="study_wave_number", "study_name_short" = "study_name_short")) %>%
  select(newid, study_name_short, study_wave_number, everything())

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



gcp_g_v1 <- gcp_g_v1 %>%
  separate(newid, into = c("newid", "timefr"), sep = "_") %>%
  mutate(gcp = (g*10)+50,
         timefr = case_when(study_name_short == "HRS_ADAMS" ~ 0,
                            TRUE ~ as.numeric(timefr)),
         main_study = case_when(study_wave_number %in% c(2, 6) ~ "SAGES",
                                study_wave_number %in% c(3, 4, 5, 8, 9) ~ "SAGES II",
                                study_wave_number %in% c(7) ~ "Intuit",
                                study_wave_number %in% c(1) ~ "ADAMS"),
         interview_mode = case_when(study_wave_number %in% c(3, 4, 5) ~ str_sub(study_name_short, 9, -1),
                                    study_wave_number %in% c(8, 9) ~ str_sub(study_name_short, 9, -12),
                                    study_wave_number %in% c(2) ~ "Inperson")
  ) 

gcp_g_v2a <- gcp_g_v2a %>%
  separate(newid, into = c("newid", "timefr"), sep = "_") %>%
  mutate(gcp = (g*10)+50,
         timefr = case_when(study_name_short == "HRS_ADAMS" ~ 0,
                            TRUE ~ as.numeric(timefr)),
         main_study = case_when(study_wave_number %in% c(2, 6) ~ "SAGES",
                                study_wave_number %in% c(3, 4, 5, 8, 9) ~ "SAGES II",
                                study_wave_number %in% c(7) ~ "Intuit",
                                study_wave_number %in% c(1) ~ "ADAMS"),
         interview_mode = case_when(study_wave_number %in% c(3, 4, 5) ~ str_sub(study_name_short, 9, -1),
                                    study_wave_number %in% c(8, 9) ~ str_sub(study_name_short, 9, -12),
                                    study_wave_number %in% c(2) ~ "Inperson")
  ) 

gcp_g_v2b <- gcp_g_v2b %>%
  separate(newid, into = c("newid", "timefr"), sep = "_") %>%
  mutate(gcp = (g*10)+50,
         timefr = case_when(study_name_short == "HRS_ADAMS" ~ 0,
                            TRUE ~ as.numeric(timefr)),
         main_study = case_when(study_wave_number %in% c(2, 6) ~ "SAGES",
                                study_wave_number %in% c(3, 4, 5, 8, 9) ~ "SAGES II",
                                study_wave_number %in% c(7) ~ "Intuit",
                                study_wave_number %in% c(1) ~ "ADAMS"),
         interview_mode = case_when(study_wave_number %in% c(3, 4, 5) ~ str_sub(study_name_short, 9, -1),
                                    study_wave_number %in% c(8, 9) ~ str_sub(study_name_short, 9, -12),
                                    study_wave_number %in% c(2) ~ "Inperson")
  ) 

gcp_g_v2c <- gcp_g_v2c %>%
  separate(newid, into = c("newid", "timefr"), sep = "_") %>%
  mutate(gcp = (g*10)+50,
         timefr = case_when(study_name_short == "HRS_ADAMS" ~ 0,
                            TRUE ~ as.numeric(timefr)),
         main_study = case_when(study_wave_number %in% c(2, 6) ~ "SAGES",
                                study_wave_number %in% c(3, 4, 5, 8, 9) ~ "SAGES II",
                                study_wave_number %in% c(7) ~ "Intuit",
                                study_wave_number %in% c(1) ~ "ADAMS"),
         interview_mode = case_when(study_wave_number %in% c(3, 4, 5) ~ str_sub(study_name_short, 9, -1),
                                    study_wave_number %in% c(8, 9) ~ str_sub(study_name_short, 9, -12),
                                    study_wave_number %in% c(2) ~ "Inperson")
      ) 


intuit_gcp <- gcp_g_v2c %>%
  filter(study_wave_number == 7) %>%
  select(newid, timefr, g, g_se, gcp)
write_csv(intuit_gcp, path(derivedfolder, "intuit_gcp.csv"))

sagesII_gcp <- gcp_g_v2c %>%
  filter(study_wave_number %in% c(3, 4, 5)) %>%
  select(-main_study)
write_csv(sagesII_gcp, path(derivedfolder, "sagesII_gcp.csv"))

sagesII_validation_gcp <- gcp_g_v2c %>%
  filter(study_wave_number %in% c(8, 9)) %>%
  select(-main_study)
write_csv(sagesII_validation_gcp, path(derivedfolder, "sagesII_validation_gcp.csv"))

sagesI_gcp <- gcp_g_v2c %>%
  filter(study_wave_number %in% c(2, 6)) %>%
  select(-main_study)
write_csv(sagesI_gcp, path(derivedfolder, "sagesI_gcp.csv"))

saveRDS(gcp_study_nested_v1,  file=path(r_objects_folder, "400_gcp_study_nested_v1.rds"))
write_csv(gcp_g_v1, path(derivedfolder, "gcp_factor_score_v1.csv"))
saveRDS(gcp_study_nested_v2a,  file=path(r_objects_folder, "400_gcp_study_nested_v2a.rds"))
write_csv(gcp_g_v2a, path(derivedfolder, "gcp_factor_score_v2a.csv"))
saveRDS(gcp_study_nested_v2b,  file=path(r_objects_folder, "400_gcp_study_nested_v2b.rds"))
write_csv(gcp_g_v2b, path(derivedfolder, "gcp_factor_score_v2b.csv"))
saveRDS(gcp_study_nested_v2c,  file=path(r_objects_folder, "400_gcp_study_nested_v2c.rds"))
saveRDS(gcp_g_v2c,  file=path(r_objects_folder, "400_gcp_g_v2c.rds"))
write_csv(gcp_g_v2c, path(derivedfolder, "gcp_factor_score_v2c.csv"))

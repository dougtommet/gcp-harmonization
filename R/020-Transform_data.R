rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

# It's input is the following R objects:
adams_df <-             readRDS(file=path(r_objects_folder, "010_adams_df.rds"))
sagesI_inperson_df <-   readRDS(file=path(r_objects_folder, "010_sagesI_inperson_df.rds"))
sagesI_560_df <-        readRDS(file=path(r_objects_folder, "010_sagesI_560_df.rds"))
sagesI_telephone_df <-  readRDS(file=path(r_objects_folder, "010_sagesI_telephone_df.rds"))
sagesII_inperson_df <-  readRDS(file=path(r_objects_folder, "010_sagesII_inperson_df.rds"))
sagesII_telephone_df <- readRDS(file=path(r_objects_folder, "010_sagesII_telephone_df.rds"))
sagesII_video_df <-     readRDS(file=path(r_objects_folder, "010_sagesII_video_df.rds"))
intuit_df <-            readRDS(file=path(r_objects_folder, "010_intuit_df.rds"))

gcp_lookup_studies <-   readRDS(file=path(r_objects_folder, "010_gcp_lookup_studies.rds"))
gcp_lookup_domains<-    readRDS(file=path(r_objects_folder, "010_gcp_lookup_domains.rds"))
gcp_items <-            readRDS(file=path(r_objects_folder, "010_gcp_items.rds"))
gcp_linking_items <-    readRDS(file=path(r_objects_folder, "010_gcp_linking_items.rds"))
gcp_order_of_links <-   readRDS(file=path(r_objects_folder, "010_gcp_order_of_links.rds"))

# It's output is the following R objects:
# saveRDS(adams_df_filtered, file=path(r_objects_folder, "020_adams_df_filtered.rds"))
# saveRDS(adams_items_df, file=path(r_objects_folder, "020_adams_items_df.rds"))

# Selecting which version of the items to use in the harmonization
# "GCP-alt-1" is the way we did the GCP in Gross (2014)
# "GCP-alt-2" is the revised way we are doing the GCP
gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
if (gcp_version == "GCPv1"){
  gcp_alt <- c("GCP-alt-1a", "GCP-alt-2a", "GCP-alt-3a")
}
if (gcp_version == "GCPv2a"){
  gcp_alt <- c("GCP-alt-1b", "GCP-alt-2a", "GCP-alt-3a")
}
if (gcp_version == "GCPv2b"){
  gcp_alt <- c("GCP-alt-1b", "GCP-alt-2b", "GCP-alt-3b")
}
if (gcp_version == "GCPv2c"){
  gcp_alt <- c("GCP-alt-1b", "GCP-alt-2c", "GCP-alt-3b")
}
saveRDS(gcp_alt, file=path(r_objects_folder, "020_gcp_alt.rds"))


gcp_items <- gcp_items %>%
  filter(Set %in% c("GCP", "GCP-intermediate variable", gcp_alt))
gcp_linking_items <- gcp_linking_items %>%
  filter(set_b %in% c("GCP", gcp_alt))

aux_variables_df <- gcp_lookup_studies %>%
  mutate(aux_variables = str_split(Aux_variables, ",")) %>%
  select(Study, aux_variables) %>%
  unnest(cols = "aux_variables") %>%
  mutate(aux_variables = str_trim(aux_variables, side="both")) 

gcp_items <- gcp_items %>%
  mutate(item_number = case_when(str_detect(item, "^Q") ~ str_sub(item, 2)))

# ADAMS
adams_items_df <- gcp_items %>% 
  filter(study=="HRS_ADAMS") 

adams_items <- adams_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

adams_aux_variables <- aux_variables_df %>%
  filter(Study == "HRS_ADAMS") %>%
  pull(aux_variables)  
adams_aux_variables <- c("AASAMPWT_F", "SECLUST", "SESTRAT")
adams_df_filtered <- adams_df %>%
  select(ADAMSSID, all_of(adams_aux_variables), all_of(adams_items)) %>%
  rename(newid = ADAMSSID) %>%
  mutate(study_wave_number = 1)

# Sages I
sagesI_items_df <- gcp_items %>%
  filter(study=="SAGES") 

sagesI_items <- sagesI_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesI_df_filtered <- sagesI_560_df %>%
  left_join(sagesI_inperson_df, by = "studyid") %>%
  select(studyid, timefr, any_of(sagesI_items))  %>%
  # rename(newid = studyid) %>%
  mutate(newid = str_c(studyid, "_", timefr)) %>%
  mutate(study_wave_number = 2)

sagesI_df_bl_filtered <- sagesI_df_filtered %>%
  filter(timefr==0)

# Sages I telephone
sagesI_telephone_items_df <- gcp_items %>%
  filter(study=="SAGES_Telephone") 

sagesI_telephone_items <- sagesI_telephone_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesI_telephone_df_filtered <- sagesI_telephone_df %>%
  select(studyid, any_of(sagesI_telephone_items))  %>%
  rename(newid = studyid) %>%
  # mutate(newid = str_c(studyid, "_", timefr)) %>%
  mutate(study_wave_number = 6)

# Sages II in-person
sagesII_inperson_items_df <- gcp_items %>%
  filter(study=="SAGESII_Inperson") 

sagesII_inperson_items <- sagesII_inperson_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_inperson_df_filtered <- sagesII_inperson_df %>%
  # rename(newid = studyid) %>%
  mutate(newid = str_c(studyid, "_", timefr)) %>%
  mutate(study_wave_number = 3)

sagesII_inperson_df_bl_filtered <- sagesII_inperson_df_filtered %>%
  filter(timefr==0)

# Sages II telephone
sagesII_telephone_items_df <- gcp_items %>%
  filter(study=="SAGESII_Telephone") 

sagesII_telephone_items <- sagesII_telephone_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_telephone_df_filtered <- sagesII_telephone_df %>%
  # rename(newid = studyid) %>%
  mutate(newid = str_c(studyid, "_", timefr)) %>%
  mutate(study_wave_number = 4)

sagesII_telephone_df_bl_filtered <- sagesII_telephone_df_filtered %>%
  group_by(newid) %>%
  arrange(newid, timefr) %>%
  slice(1) %>%
  ungroup()

# Sages II video
sagesII_video_items_df <- gcp_items %>%
  filter(study=="SAGESII_Video") 

sagesII_video_items <- sagesII_video_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

sagesII_video_df_filtered <- sagesII_video_df %>%
  # rename(newid = studyid) %>%
  mutate(newid = str_c(studyid, "_", timefr)) %>%
  mutate(study_wave_number = 5)

sagesII_video_df_bl_filtered <- sagesII_video_df_filtered %>%
  group_by(newid) %>%
  arrange(newid, timefr) %>%
  slice(1) %>%
  ungroup()

# Duke data
intuit_items_df <- gcp_items %>%
  filter(study=="INTUIT_ACTIVE") 

intuit_items <- intuit_items_df %>%
  select(source_item) %>%
  filter(!is.na(source_item)) %>%
  mutate(item = str_split(source_item, ",", simplify = FALSE)) %>%
  unnest(item) %>%
  select(item) %>%
  mutate(item = str_trim(item, side="both")) %>%
  filter(!str_detect(item, "^i")) %>%
  distinct(item) %>%
  pull(item)

intuit_df_filtered <- intuit_df %>%
  mutate(newid = str_c(studyno, "_", visit)) %>%
  mutate(study_wave_number = 7)

intuit_df_bl_filtered <- intuit_df_filtered %>%
  filter(visit==0)

### Save the R objects
saveRDS(adams_items_df,                   file=path(r_objects_folder, "020_adams_items_df.rds"))
saveRDS(adams_df_filtered,                file=path(r_objects_folder, "020_adams_df_filtered.rds"))
saveRDS(sagesI_items_df,                  file=path(r_objects_folder, "020_sagesI_items_df.rds"))
saveRDS(sagesI_df_filtered,               file=path(r_objects_folder, "020_sagesI_df_filtered.rds"))
saveRDS(sagesI_df_bl_filtered,            file=path(r_objects_folder, "020_sagesI_df_bl_filtered.rds"))
saveRDS(sagesII_inperson_items_df,        file=path(r_objects_folder, "020_sagesII_inperson_items_df.rds"))
saveRDS(sagesII_inperson_df_filtered,     file=path(r_objects_folder, "020_sagesII_inperson_df_filtered.rds"))
saveRDS(sagesII_inperson_df_bl_filtered,  file=path(r_objects_folder, "020_sagesII_inperson_df_bl_filtered.rds"))
saveRDS(sagesII_telephone_items_df,       file=path(r_objects_folder, "020_sagesII_telephone_items_df.rds"))
saveRDS(sagesII_telephone_df_filtered,    file=path(r_objects_folder, "020_sagesII_telephone_df_filtered.rds"))
saveRDS(sagesII_telephone_df_bl_filtered, file=path(r_objects_folder, "020_sagesII_telephone_df_bl_filtered.rds"))
saveRDS(sagesII_video_items_df,           file=path(r_objects_folder, "020_sagesII_video_items_df.rds"))
saveRDS(sagesII_video_df_filtered,        file=path(r_objects_folder, "020_sagesII_video_df_filtered.rds"))
saveRDS(sagesII_video_df_bl_filtered,     file=path(r_objects_folder, "020_sagesII_video_df_bl_filtered.rds"))
saveRDS(intuit_items_df,                  file=path(r_objects_folder, "020_intuit_items_df.rds"))
saveRDS(intuit_df_filtered,               file=path(r_objects_folder, "020_intuit_df_filtered.rds"))
saveRDS(intuit_df_bl_filtered,            file=path(r_objects_folder, "020_intuit_df_bl_filtered.rds"))

saveRDS(aux_variables_df,                 file=path(r_objects_folder, "020_aux_variables_df.rds"))





# gcp_df_filtered <- adams_df_filtered %>%
#   bind_rows(sagesI_df_bl_filtered) %>%
#   bind_rows(sagesII_inperson_df_bl_filtered) %>%
#   bind_rows(sagesII_telephone_df_bl_filtered) %>%
#   bind_rows(sagesII_video_df_bl_filtered)
# 
# gcp_df_filtered <- gcp_df_filtered %>%
#   haven::zap_formats() %>%
#   haven::zap_label() %>%
#   haven::zap_labels()
# 
# gcp_items_df <- adams_items_df %>%
#   bind_rows(sagesI_items_df) %>%
#   bind_rows(sagesII_inperson_items_df) %>%
#   bind_rows(sagesII_telephone_items_df) %>%
#   bind_rows(sagesII_video_items_df)
# 
# 
# 
# saveRDS(gcp_df_filtered, file=path(r_objects_folder, "020_gcp_df_filtered.rds"))
# saveRDS(gcp_items_df, file=path(r_objects_folder, "020_gcp_items_df.rds"))

gcp_df <- tibble(response_data = list(adams_df_filtered, 
                                      sagesI_df_bl_filtered,
                                      sagesII_inperson_df_bl_filtered, 
                                      sagesII_telephone_df_bl_filtered, 
                                      sagesII_video_df_bl_filtered,
                                      sagesI_telephone_df_filtered,
                                      intuit_df_filtered),
                 response_data_all = list(adams_df_filtered, 
                                      sagesI_df_filtered,
                                      sagesII_inperson_df_filtered, 
                                      sagesII_telephone_df_filtered, 
                                      sagesII_video_df_filtered,
                                      sagesI_telephone_df_filtered,
                                      intuit_df_filtered),
                 item_data = list(adams_items_df, 
                                  sagesI_items_df, 
                                  sagesII_inperson_items_df, 
                                  sagesII_telephone_items_df, 
                                  sagesII_video_items_df, 
                                  sagesI_telephone_items_df,
                                  intuit_items_df))
gcp_df <- gcp_df %>%
  mutate(response_data = purrr::map(response_data, haven::zap_formats),
         response_data = purrr::map(response_data, haven::zap_label),
         response_data = purrr::map(response_data, haven::zap_labels),
         response_data_all = purrr::map(response_data_all, haven::zap_formats),
         response_data_all = purrr::map(response_data_all, haven::zap_label),
         response_data_all = purrr::map(response_data_all, haven::zap_labels)
         )

gcp_df <- gcp_df %>%
  bind_cols(gcp_lookup_studies %>%
              slice(c(1, 2, 4, 5, 6, 3, 7))
  )
gcp_df <- gcp_df %>%
  mutate(Aux_variables = list(c("AASAMPWT_F", "SECLUST", "SESTRAT"), 
                              c("timefr"), 
                              c("timefr"), 
                              c("timefr"), 
                              c("timefr"), 
                              c("study_wave_number"),
                              c("visit")))

saveRDS(gcp_df,                 file=path(r_objects_folder, str_c("020_gcp_items_df_", gcp_version, ".rds")))
saveRDS(gcp_linking_items,      file=path(r_objects_folder, str_c("020_gcp_linking_items_", gcp_version, ".rds")))

rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

### This file reads in the raw data.  
# It's input is the raw data files.
# It's output is the following R objects:

if(fs::dir_exists(adams_datafolder)) {
  # ADAMS Data
  # Data is on the network drive
  adams_df <- read_sav(fs::path(adams_datafolder, "ADAMS1AN_R.sav"))
  adams_trk_df <- read_dta(fs::path(adams_datafolder, "ADAMS1TRK_R.dta")) %>%
    select(ADAMSSID, AASAMPWT_F, SECLUST, SESTRAT)
  
  adams_df <- adams_df %>%
    left_join(adams_trk_df, by = "ADAMSSID")
  
  saveRDS(adams_df,               file=path(r_objects_folder, "010_adams_df.rds"))
  
}
if(fs::dir_exists(sagesI_datafolder)) {
  # Sages I Data
  sagesI_560_df <- read_dta(fs::path(sagesI_datafolder, "N560.dta"))
  sagesI_df <- read_dta(fs::path(sagesI_datafolder, "SAGES-Subject-Interview-Data-Analysis-File.dta"))
  # Reading in an older version of the SAGES I frozen file because the month 1 & 2 visits are not in the newest frozen file
  sagesI_df_old <- read_dta(fs::path(sagesI_datafolder_old, "SAGES-Subject-Interview-Data-Analysis-File.dta"))
  sagesI_df_old_missing_visits <- sagesI_df_old %>%
    filter(timefr %in% c(1, 2))
  
  # Add in the missing 1 & 2 month visits
  sagesI_df <- sagesI_df %>%
    bind_rows(sagesI_df_old_missing_visits) %>%
    arrange(studyid, timefr) 
  
  # Add in the telephone interview indicator
  # The telephone interview indicator seems to only pick up interviews in the later visits,
  # So creating a composite variable that combines the indicator variable with if tpnpb is not missing.
  # Also creating a variable that examines the missing data pattern in npb variables to guess if it was
  # a telephone interview.  This is to check how well the composite variable does.
  
  sagesI_telephone_indicator <- read_csv(fs::path(sages_datapath, "SOURCE", "SAGESI-Telephone", "sages i phone 2022-02-28.csv"))
  sagesI_telephone_indicator <- sagesI_telephone_indicator %>%
    mutate(timefr = str_extract(timefr, "\\([^()]+\\)"),
           timefr = str_sub(timefr, 2, -2),
           timefr = as.numeric(timefr))
  
  sagesI_df <- sagesI_df %>%
    left_join(sagesI_telephone_indicator, by = c("studyid", "timefr")) %>%
    mutate(phone_interview_composite = case_when(phone_interview==1 ~ 1,
                                                 !is.na(tpnpb01) ~ 1,
                                                 TRUE ~ 0),
           probable_telephone = case_when(!is.na(npb01) & is.na(npb06) & is.na(npb12) & is.na(npb14) & !is.na(npb15) & !is.na(npb25) ~ 1,
                                          TRUE ~ 0)) %>%
    select(studyid, timefr, phone_interview_composite, phone_interview, probable_telephone, starts_with("npb"), starts_with("tpnpb"), starts_with("vd"), everything())
  
  # It seems like the phone interview indicator misses only one interview that is likely a phone interview
  # sagesI_df %>%
  #   filter(probable_telephone==1 & is.na(phone_interview)) 
  
  sagesI_df <- sagesI_df %>%
    filter(studyid %in% (sagesI_560_df %>% pull(studyid))) %>%
    select(-phone_interview, -probable_telephone)
  
  
  
  sagesI_inperson_df <- sagesI_df %>%
    filter(phone_interview_composite==0)
  sagesI_telephone_df <- sagesI_df %>%
    filter(phone_interview_composite==1)
  
  sagesI_telephone_df <- sagesI_telephone_df %>%
    mutate(npb01 = case_when(!is.na(tpnpb01) ~ tpnpb01,
                             TRUE ~ npb01),
           npb02 = case_when(!is.na(tpnpb02) ~ tpnpb02,
                             TRUE ~ npb02),
           npb03 = case_when(!is.na(tpnpb03) ~ tpnpb03,
                             TRUE ~ npb03),
           npb04 = case_when(!is.na(tpnpb04) ~ tpnpb04,
                             TRUE ~ npb04),
           npb05 = case_when(!is.na(tpnpb05) ~ tpnpb05,
                             TRUE ~ npb05),
           npb15 = case_when(!is.na(tpnpb06) ~ tpnpb06,
                             TRUE ~ npb15),
           npb15a = case_when(!is.na(tpnpb07) ~ tpnpb07,
                             TRUE ~ npb15a),
           npb16 = case_when(!is.na(tpnpb08) ~ tpnpb08,
                             TRUE ~ npb16),
           npb16a = case_when(!is.na(tpnpb09) ~ tpnpb09,
                             TRUE ~ npb16a),
           npb17 = case_when(!is.na(tpnpb10) ~ tpnpb10,
                             TRUE ~ npb17),
           npb18 = case_when(!is.na(tpnpb11) ~ tpnpb11,
                             TRUE ~ npb18),
           npb19 = case_when(!is.na(tpnpb12) ~ tpnpb12,
                             TRUE ~ npb19),
           npb20 = case_when(!is.na(tpnpb13) ~ tpnpb13,
                             TRUE ~ npb20),
           npb21 = case_when(!is.na(tpnpb14) ~ tpnpb14,
                             TRUE ~ npb21),
           npb22 = case_when(!is.na(tpnpb15) ~ tpnpb15,
                             TRUE ~ npb22),
           npb23 = case_when(!is.na(tpnpb16) ~ tpnpb16,
                             TRUE ~ npb23),
           npb_category_switch1 = case_when(!is.na(tpnpb17) ~ tpnpb17,
                                 TRUE ~ npb_category_switch1),
           npb_category_switch2 = case_when(!is.na(tpnpb18) ~ tpnpb18,
                                 TRUE ~ npb_category_switch2),
           npb_category_switch3 = case_when(!is.na(tpnpb19) ~ tpnpb19,
                                 TRUE ~ npb_category_switch3),
           npb_category_switch4 = case_when(!is.na(tpnpb20) ~ tpnpb20,
                                 TRUE ~ npb_category_switch4),
           npb_category_switch5 = case_when(!is.na(tpnpb21) ~ tpnpb21,
                                 TRUE ~ npb_category_switch5),
           
           npb25 = case_when(!is.na(tpnpb22) ~ tpnpb22,
                             TRUE ~ npb25),
           npb26 = case_when(!is.na(tpnpb23) ~ tpnpb23,
                             TRUE ~ npb26),
           npb27 = case_when(!is.na(tpnpb24) ~ tpnpb24,
                             TRUE ~ npb27),
           npb28 = case_when(!is.na(tpnpb25) ~ tpnpb25,
                             TRUE ~ npb28),
           npb29 = case_when(!is.na(tpnpb26) ~ tpnpb26,
                             TRUE ~ npb29),
           npb30 = case_when(!is.na(tpnpb27) ~ tpnpb27,
                             TRUE ~ npb30),
           npb31 = case_when(!is.na(tpnpb28) ~ tpnpb28,
                             TRUE ~ npb31),
           npb32 = case_when(!is.na(tpnpb29) ~ tpnpb29,
                             TRUE ~ npb32),
           npb33 = case_when(!is.na(tpnpb30) ~ tpnpb30,
                             TRUE ~ npb33),
           npb34 = case_when(!is.na(tpnpb31) ~ tpnpb31,
                             TRUE ~ npb34),
           npb35 = case_when(!is.na(tpnpb32) ~ tpnpb32,
                             TRUE ~ npb35),
           npb36 = case_when(!is.na(tpnpb33) ~ tpnpb33,
                             TRUE ~ npb36),
           npb37 = case_when(!is.na(tpnpb34) ~ tpnpb34,
                                 TRUE ~ npb37),
           npb38 = case_when(!is.na(tpnpb35) ~ tpnpb35,
                                 TRUE ~ npb38)
           ) %>%
    select(studyid, timefr, starts_with("npb"), starts_with("tpnpb"), everything())
  
  # SAGESI Bunker data
  sagesI_bunker_df <- read_dta(fs::path(sagesI_bunkerfolder, "tnpbanalysisfile.dta"))
  sagesI_bunker_df <- sagesI_bunker_df %>%
    filter(!is.na(whitelephone_npb_interview_proce)) %>%
    select(studyid, starts_with("whitp"), starts_with("whicatsw")) %>%
    select(-starts_with("whitpproc")) %>%
    distinct()
  
  sagesI_telephone_df_renamed_to_bunker <- sagesI_telephone_df %>%
    rename(whitpnpb01  = npb01) %>%
    rename(whitpnpb02  = npb02) %>%
    rename(whitpnpb03  = npb03) %>%
    rename(whitpnpb04  = npb04) %>%
    rename(whitpnpb05  = npb05) %>%
    rename(whitpnpb15  = npb15) %>%
    rename(whitpnpb15a = npb15a) %>%
    rename(whitpnpb16  = npb16) %>%
    rename(whitpnpb16a = npb16a) %>%
    rename(whitpnpb17  = npb17) %>%
    rename(whitpnpb18  = npb18) %>%
    rename(whitpnpb19  = npb19) %>%
    rename(whitpnpb20  = npb20) %>%
    rename(whitpnpb21  = npb21) %>%
    rename(whitpnpb22  = npb22) %>%
    rename(whitpnpb23  = npb23) %>%
    rename(whitpnpb25  = npb25) %>%
    rename(whitpnpb26  = npb26) %>%
    rename(whitpnpb27  = npb27) %>%
    rename(whitpnpb28  = npb28) %>%
    rename(whitpnpb29  = npb29) %>%
    rename(whitpnpb30  = npb30) %>%
    rename(whitpnpb31  = npb31) %>%
    rename(whitpnpb32  = npb32) %>%
    rename(whitpnpb33  = npb33) %>%
    rename(whitpnpb34  = npb34) %>%
    rename(whitpnpb35  = npb35) %>%
    rename(whitpnpb36  = npb36) %>%
    rename(whitpnpb_bntcol1 = npb37) %>%
    rename(whitpnpb_bntcol2 = npb38) %>%
    rename(whicatsw_fruits    = npb_category_switch1) %>%
    rename(whicatsw_furn      = npb_category_switch2) %>%
    rename(whicatsw_correct   = npb_category_switch3) %>%
    rename(whicatsw_incorrect = npb_category_switch4) %>%
    rename(whicatsw_pers      = npb_category_switch5) %>%
    select(studyid, starts_with("whi"))
  
  sagesI_telephone_df <- sagesI_bunker_df %>%
    bind_rows(sagesI_telephone_df_renamed_to_bunker) %>%
    group_by(studyid) %>%
    mutate(n = row_number(),
           studyid = glue::glue("{studyid}_{n}")
           ) %>%
    select(-n) %>%
    select(studyid, everything()) %>%
    ungroup()
  
  saveRDS(sagesI_df,              file=path(r_objects_folder, "010_sagesI_df.rds"))
  saveRDS(sagesI_560_df,          file=path(r_objects_folder, "010_sagesI_560_df.rds"))
  saveRDS(sagesI_inperson_df,     file=path(r_objects_folder, "010_sagesI_inperson_df.rds"))
  saveRDS(sagesI_telephone_df,    file=path(r_objects_folder, "010_sagesI_telephone_df.rds"))
}

if(fs::dir_exists(sagesII_datafolder)) {
  # Sages II Data
  # sagesII_df_old <- read_dta(fs::path(sagesII_datafolder, "sagesii.dta")) 
  # sagesII_df_old <- sagesII_df_old %>%
  #   rename(npb_08 = npb08) %>%
  #   rename(npb_10 = npb10)
  sagesII_df <- read_dta(fs::path(sagesII_datafolder, "sagesiinpb 2022-03-25.dta")) 
  
  # There was one record that had a very large Trails B time which is probably a data error
  sagesII_df <- sagesII_df %>%
    mutate(npb_61 = case_when(npb_61>800 & npb_61 <900 ~ NA_real_,
                              TRUE ~ npb_61))
    
  sagesII_df <- sagesII_df %>%
    mutate(npb_08 = as.numeric(npb_08),
           npb_10 = as.numeric(npb_10),
           npb_12 = as.numeric(npb_12),
           npb_17 = as.numeric(npb_17),
           npb_54 = as.numeric(npb_54),
           npb_55 = as.numeric(npb_55),
           npb_57 = as.numeric(npb_57),
           npb_25 = as.numeric(npb_25),
           npb_58 = as.numeric(npb_58)) %>%
    mutate(npb_01 = case_when(npb_01 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_01),
           npb_02 = case_when(npb_02 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_02),
           npb_03 = case_when(npb_03 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_03),
           npb_04 = case_when(npb_04 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_04),
           npb_05 = case_when(npb_05 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_05),
           npb_06 = case_when(npb_06 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_06),
           npb_08 = case_when(npb_08 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_08),
           npb_10 = case_when(npb_10 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_10),
           npb_11 = case_when(npb_11 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_11),
           npb_12 = case_when(npb_12 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_12),
           npb_13 = case_when(npb_13 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_13),
           npb_14 = case_when(npb_14 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_14),
           npb_15 = case_when(npb_15 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_15),
           npb_15a = case_when(npb_15a %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_15a),
           npb_16 = case_when(npb_16 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_16),
           npb_16a = case_when(npb_16a %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_16a),
           npb_17 = case_when(npb_17 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_17),
           npb_18 = case_when(npb_18 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_18),
           npb_19 = case_when(npb_19 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_19),
           npb_20 = case_when(npb_20 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_20),
           npb_21 = case_when(npb_21 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_21),
           npb_22 = case_when(npb_22 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_22),
           npb_23 = case_when(npb_23 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_23),
           npb_28 = case_when(npb_28 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_28),
           npb_29 = case_when(npb_29 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_29),
           npb_30 = case_when(npb_30 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_30),
           npb_37 = case_when(npb_37 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_37),
           npb_38 = case_when(npb_38 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_38),
           npb_39 = case_when(npb_39 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_39),
           npb_50 = case_when(npb_50 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_50),
           npb_51 = case_when(npb_51 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_51),
           npb_52 = case_when(npb_52 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_52),
           npb_53 = case_when(npb_53 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_53),
           npb_54 = case_when(npb_54 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_54),
           npb_55 = case_when(npb_55 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_55),
           npb_56 = case_when(npb_56 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_56),
           npb_57 = case_when(npb_57 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_57),
           npb_61 = case_when(npb_61 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_61),
           npb_62 = case_when(npb_62 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_62),
           npb_64 = case_when(npb_64 %in% c(99999992, 99999993, 99999994, 99999995, 99999997, 100000000) ~ NA_real_,
                              TRUE ~ npb_64),
           ) %>%
    select(sort(tidyselect::peek_vars())) %>%
    select(studyid, timefr, vin_loc, everything())
  

  sagesII_df <- sagesII_df %>%
    group_by(studyid) %>%
    arrange(studyid, timefr) %>%
    mutate(visit_number = row_number()) %>%
    ungroup() %>%
    select(studyid, vin_loc, timefr, visit_number, everything()) 
  
  
  sagesII_inperson_df <- sagesII_df %>%
    filter(vin_loc %in% c(1, 4))
  
  sagesII_telephone_df <- sagesII_df %>%
    filter(vin_loc == 2)
  
  sagesII_video_df <- sagesII_df %>%
    filter(vin_loc == 3)
  
  saveRDS(sagesII_df,              file=path(r_objects_folder, "010_sagesII_df.rds"))
  saveRDS(sagesII_inperson_df,     file=path(r_objects_folder, "010_sagesII_inperson_df.rds"))
  saveRDS(sagesII_telephone_df,    file=path(r_objects_folder, "010_sagesII_telephone_df.rds"))
  saveRDS(sagesII_video_df,        file=path(r_objects_folder, "010_sagesII_video_df.rds"))
}

# Duke data


intuit_df <- read_xlsx(fs::path(sages_datapath, "SOURCE", "INTUIT", "ACTIVATE_INTUIT_forNIDUS_04142022.xlsx"), sheet = "CognitiveData")
saveRDS(intuit_df,        file=path(r_objects_folder, "010_intuit_df.rds"))


# Googlesheet Meta Data
params <- list(pull_from_googlesheets = TRUE)

if (params$pull_from_googlesheets) {
  # googlesheets4::gs4_auth()
  sheet_path <- googledrive::drive_get("SAGES GCP Harmonization Codebook")
  gcp_lookup_studies <- googlesheets4::read_sheet(sheet_path, sheet = "Studies")
  Sys.sleep(2)
  gcp_lookup_domains <- googlesheets4::read_sheet(sheet_path, sheet = "Domains")
  Sys.sleep(2)
  gcp_items <- googlesheets4::read_sheet(sheet_path, sheet = "Items")
  Sys.sleep(2)
  gcp_items <- gcp_items %>%
    mutate(source_item = case_when(source_item=="NA" ~ NA_character_,
                                   TRUE ~ source_item),
           recode = case_when(recode=="NA" ~ NA_character_,
                              TRUE ~ recode),
           value_label = case_when(value_label=="NA" ~ NA_character_,
                                   TRUE ~ value_label),
           source_file = case_when(source_file=="NA" ~ NA_character_,
                                   TRUE ~ source_file)
    )
  gcp_linking_items <- googlesheets4::read_sheet(sheet_path, sheet = "Linking Items")
  Sys.sleep(2)
  gcp_linking_items <- gcp_linking_items %>%
    filter(!is.na(item_label_a))
  gcp_linking_items <- gcp_linking_items %>%
    filter(!study_a %in% c("SAGES_Telephone"))
  gcp_order_of_links <- googlesheets4::read_sheet(sheet_path, sheet = "ORDER OF LINKS")
  Sys.sleep(2)
  
  
  write_csv(gcp_lookup_studies, path(here(), "metadata", "gcp_lookup_studies.csv"))
  write_csv(gcp_lookup_domains, path(here(), "metadata", "gcp_lookup_domains.csv"))
  write_csv(gcp_items, path(here(), "metadata", "gcp_items.csv"))
  write_csv(gcp_linking_items, path(here(), "metadata", "gcp_linking_items.csv"))
  write_csv(gcp_order_of_links, path(here(), "metadata", "gcp_order_of_links.csv"))
} else {
  gcp_lookup_studies <- read_csv(path(here(), "metadata", "gcp_lookup_studies.csv"))
  gcp_lookup_domains <- read_csv(path(here(), "metadata", "gcp_lookup_domains.csv"))
  gcp_items          <- read_csv(path(here(), "metadata", "gcp_items.csv"))
  gcp_linking_items  <- read_csv(path(here(), "metadata", "gcp_linking_items.csv"))
  gcp_order_of_links <- read_csv(path(here(), "metadata", "gcp_order_of_links.csv"))
  
}




### Save the R objects

saveRDS(gcp_lookup_studies,     file=path(r_objects_folder, "010_gcp_lookup_studies.rds"))
saveRDS(gcp_lookup_domains,     file=path(r_objects_folder, "010_gcp_lookup_domains.rds"))
saveRDS(gcp_items,              file=path(r_objects_folder, "010_gcp_items.rds"))
saveRDS(gcp_linking_items,      file=path(r_objects_folder, "010_gcp_linking_items.rds"))
saveRDS(gcp_order_of_links,     file=path(r_objects_folder, "010_gcp_order_of_links.rds"))



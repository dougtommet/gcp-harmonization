rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_alt <- readRDS(file=path(r_objects_folder, "020_gcp_alt.rds"))

empty_item_bank <- readRDS(file=path(r_objects_folder, "070_empty_item_bank.rds"))
gcp_study_nested <- readRDS(file=path(r_objects_folder, str_c("070_gcp_study_nested_", gcp_version, ".rds")))


gcp_long_df <- gcp_study_nested %>%
  select(response_data_long) %>%
  unnest(cols = c("response_data_long"))


my_adams_unifactor_model_mlr_fx <- function(i, st.analysis, runmplus) {
  
  fff <- gcp_study_nested %>%
    filter(study_wave_number==i) 
  fff <- fff[["h_obj"]][[1]]
  
  # Unidimensional model
  st.model.uni <- MplusIRTtools::write_unidimensional_cfa(study.items = fff[["item_df_filtered"]]) 
  mplus.output.name <- str_c("link-01-ADAMS-uni-mlr-", gcp_version)
  MplusIRTtools::fit_mplus_cfa_model(response.df = fff[["response_df_filtered"]],
                                     study.items = fff[["study.items"]],
                                     id_variable = "newid",
                                     st.model = st.model.uni,
                                     st.analysis = st.analysis, 
                                     st.variable = "CATEGORICAL ARE all; idvariable = mplusid; \n  cluster = SECLUST ; weight is AASAMPWT_F; stratification is SESTRAT;",
                                     st.output = "standardized;",
                                     mplus.output.path = here::here("mplus_ignore"),
                                     mplus.output = mplus.output.name,
                                     mplus.output.path2 = here::here("mplus_output"),
                                     runmplus = runmplus,
                                     aux.variables = c("AASAMPWT_F", "SECLUST", "SESTRAT"))
  
}

# Fit the Mplus models
# st.analysis <- "estimator = mlr; link=probit; COVERAGE = 0; integration = montecarlo(50); "
st.analysis <- "type = complex; estimator = mlr; COVERAGE = 0; "

# The ADAMS data
my_adams_unifactor_model_mlr_fx(1, st.analysis, runmplus = TRUE)

# fff <- gcp_study_nested %>%
#   filter(study_wave_number==1)
# fff <- fff[["h_obj"]][[1]]
# foo <- fff[["response_df_filtered"]]
# 
# q105_df <- foo %>% filter(item=="Q105") %>% select(-newid, -timefr)
# 
# q105_svy <- survey::svydesign(ids = ~SECLUST, strata = ~SESTRAT, weights = ~AASAMPWT_F, data=q105_df, nest=TRUE)
# q105_svy
# gtsummary::tbl_svysummary(q105_svy, digits=list(c(response) ~3))



fff <- gcp_study_nested %>%
  filter(study_wave_number %in% c(1)) %>%
  mutate(mplus.output.uni = here::here("mplus_ignore", str_c("link-01-ADAMS-uni-mlr-", gcp_version), str_c("link-01-ADAMS-uni-mlr-", gcp_version, ".out")),
         summarized_response_df = purrr::map(h_obj, ~HarmonizationTools::summarize_response_df(.x)))


fff <- fff %>%
  mutate(uni.parameters = purrr::pmap(list(summarized_response_df = summarized_response_df, 
                                           mplus.output = mplus.output.uni, 
                                           h_obj = h_obj),
                                      .f = HarmonizationTools::get_item_parameters, itembank = empty_item_bank))


uni_item_bank_01 <- HarmonizationTools::add_paramters_to_item_bank(item.bank = empty_item_bank,
                                                                   current_item_parameters = fff[["uni.parameters"]][[1]])
saveRDS(uni_item_bank_01,  file=path(r_objects_folder, str_c("090_uni_item_bank_01_", gcp_version, ".rds")))




my_linking_fx <- function(h_obj, current_item_bank, output_name, 
                          a.extra.model.statement = NULL,
                          a.df_name = "response_df_filtered", 
                          a.study_items_df ="item_df_filtered", 
                          a.runmplus = TRUE, 
                          a.bifactor_model = FALSE, 
                          a.subdomain_suffix = "",
                          a.st.analysis = "estimator = mlr; COVERAGE = 0 ; ") {
  
  HarmonizationTools::link_studies(h_obj = h_obj, 
                                   id_variable = "newid", 
                                   item.bank = current_item_bank, 
                                   full_response_df = gcp_long_df,
                                   mplus.output.path = here::here("mplus_ignore"), 
                                   mplus.output = output_name,
                                   st.analysis = a.st.analysis,
                                   st.plot = "TYPE = PLOT2;",
                                   st.variable = "CATEGORICAL ARE all; idvariable = mplusid; ",
                                   st.output = "standardized; svalues; tech8; tech10;",
                                   st.savedata = "",
                                   df_name = a.df_name,
                                   study_items_df = a.study_items_df,
                                   extra.model.statement = a.extra.model.statement,
                                   runmplus = a.runmplus, 
                                   fixed.mean = FALSE,
                                   fixed.var = FALSE,
                                   fixed.subfactor.var = TRUE,
                                   bifactor_model = a.bifactor_model,
                                   subdomain_suffix = a.subdomain_suffix,
                                   mplus.output.path2 = here::here("mplus_output")
  )
  
  summarized_response_df_foo <- HarmonizationTools::summarize_response_df(h_obj, df_name = a.df_name)
  study.parameters <- HarmonizationTools::get_item_parameters(summarized_response_df = summarized_response_df_foo, 
                                                              mplus.output = here::here("mplus_ignore", output_name, str_c(output_name, ".out")),
                                                              h_obj = h_obj,
                                                              itembank = current_item_bank)
  
  updated_item_bank <- HarmonizationTools::add_paramters_to_item_bank(item.bank = current_item_bank,
                                                                      current_item_parameters = study.parameters)
  updated_item_bank
  
}

my_harmonization_fx <- function(i, 
                                current_item_bank, 
                                swn, 
                                b.runmplus, 
                                b.bifactor_model = FALSE,
                                b.extra.model.statement = NULL, 
                                b.extra.model.statement.dich = NULL,
                                b.subdomain_suffix = "") {
  
  i_pad <- stringr::str_pad(i, 2, pad = "0")
  
  study_name <- gcp_study_nested %>%
    filter(study_wave_number == swn) %>%
    pull(study_name_short)
  
  ggg <- gcp_study_nested %>%
    filter(study_wave_number == swn) 
  ggg <- ggg[["h_obj"]][[1]]
  
  
  # This if statement is in case I need to do something different for specific studies
  if (!swn %in% c(9999)) {
    b.output_name   <- stringr::str_c("link-", i_pad, "-", study_name, "-uni-mlr-", gcp_version)
    updated_item_bank <- my_linking_fx(h_obj = ggg,
                                       current_item_bank = current_item_bank,
                                       output_name = b.output_name,
                                       a.df_name = "response_df_filtered",
                                       a.study_items_df ="item_df_filtered",
                                       a.extra.model.statement = b.extra.model.statement,
                                       a.runmplus = b.runmplus,
                                       a.bifactor_model = b.bifactor_model,
                                       a.subdomain_suffix = b.subdomain_suffix)
    return(updated_item_bank)
  }
  
  
}

# 02 - SAGESI in-person
if (gcp_version == "GCPv1") {
  uni_item_bank_02 <- my_harmonization_fx(2, uni_item_bank_01, 2, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q104$7 * 5.8]; [Q117$8 * 5.3];")
} else if (gcp_version == "GCPv2a") {
  uni_item_bank_02 <- my_harmonization_fx(2, uni_item_bank_01, 2, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q104$7 * 5.8]; [Q117$8 * 5.3];")
} else {
  uni_item_bank_02 <- my_harmonization_fx(2, uni_item_bank_01, 2, b.runmplus = TRUE, b.bifactor_model = FALSE)
}

saveRDS(uni_item_bank_02,  file=path(r_objects_folder, str_c("090_uni_item_bank_02_", gcp_version, ".rds")))

# 03 - SAGESII in-person
if (gcp_version == "GCPv1") {
  uni_item_bank_03 <- my_harmonization_fx(3, uni_item_bank_02, 3, b.runmplus = TRUE, b.bifactor_model = FALSE)
} else {
  uni_item_bank_03 <- my_harmonization_fx(3, uni_item_bank_02, 3, b.runmplus = TRUE, b.bifactor_model = FALSE)
}

saveRDS(uni_item_bank_03,  file=path(r_objects_folder, str_c("090_uni_item_bank_03_", gcp_version, ".rds")))

# 04 - SAGESII telephone
if (gcp_version == "GCPv2a") {
  uni_item_bank_04 <- my_harmonization_fx(4, uni_item_bank_03, 4, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q226$8 * 7.5];")
} else if (gcp_version == "GCPv2b") {
  uni_item_bank_04 <- my_harmonization_fx(4, uni_item_bank_03, 4, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q226$8 * 7];")
} else if (gcp_version == "GCPv2c") {
  uni_item_bank_04 <- my_harmonization_fx(4, uni_item_bank_03, 4, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q226$8 * 7.5];")
} else {
  uni_item_bank_04 <- my_harmonization_fx(4, uni_item_bank_03, 4, b.runmplus = TRUE, b.bifactor_model = FALSE,)
}

saveRDS(uni_item_bank_04,  file=path(r_objects_folder, str_c("090_uni_item_bank_04_", gcp_version, ".rds")))

# 05 - SAGESII video
if (gcp_version == "GCPv1") {
  uni_item_bank_05 <- my_harmonization_fx(5, uni_item_bank_04, 5, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q104$8 * 7.5];")
} else if (gcp_version == "GCPv2a") {
  uni_item_bank_05 <- my_harmonization_fx(5, uni_item_bank_04, 5, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q104$8 * 7.5]; [Q225$8 * 9.5]; [Q225$9 * 10];")
} else if (gcp_version == "GCPv2b") {
  uni_item_bank_05 <- my_harmonization_fx(5, uni_item_bank_04, 5, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q225$8 * 9.5]; [Q225$9 * 10];")
} else if (gcp_version == "GCPv2c") {
  uni_item_bank_05 <- my_harmonization_fx(5, uni_item_bank_04, 5, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q225$8 * 9.5]; [Q225$9 * 10];")
} else {
  uni_item_bank_05 <- my_harmonization_fx(5, uni_item_bank_04, 5, b.runmplus = TRUE, b.bifactor_model = FALSE,
                                          b.extra.model.statement = "[Q266$8 * 5.8];")
}

saveRDS(uni_item_bank_05,  file=path(r_objects_folder, str_c("090_uni_item_bank_05_", gcp_version, ".rds")))

# 06 - SAGESI telephone
uni_item_bank_06 <- my_harmonization_fx(6, uni_item_bank_05, 6, b.runmplus = TRUE, b.bifactor_model = FALSE)
saveRDS(uni_item_bank_06,  file=path(r_objects_folder, str_c("090_uni_item_bank_06_", gcp_version, ".rds")))

# 07 - Intuit
uni_item_bank_07 <- my_harmonization_fx(7, uni_item_bank_06, 7, b.runmplus = TRUE, b.bifactor_model = FALSE)
saveRDS(uni_item_bank_07,  file=path(r_objects_folder, str_c("090_uni_item_bank_07_", gcp_version, ".rds")))

# 08 - SAGESII telephone validation
uni_item_bank_08 <- my_harmonization_fx(8, uni_item_bank_07, 8, b.runmplus = TRUE, b.bifactor_model = FALSE)
saveRDS(uni_item_bank_08,  file=path(r_objects_folder, str_c("090_uni_item_bank_08_", gcp_version, ".rds")))

# 09 - SAGESII video validation
uni_item_bank_09 <- my_harmonization_fx(9, uni_item_bank_08, 9, b.runmplus = TRUE, b.bifactor_model = FALSE)
saveRDS(uni_item_bank_09,  file=path(r_objects_folder, str_c("090_uni_item_bank_09_", gcp_version, ".rds")))


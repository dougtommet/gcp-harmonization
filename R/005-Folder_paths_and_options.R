
knitr::opts_chunk$set(echo=FALSE, warning=FALSE, message=FALSE)
options(knitr.table.format = 'html')


kable.styling.bootstrap.option <- c("striped", "hover", "condensed", "responsive")
kable.styling.position.option <- "left"


netpath <- QSPworkflow::network_path()
sages_datapath <- fs::path(netpath, "STUDIES", "SAGES", "POSTED", "DATA")
adams_datafolder <- fs::path(netpath, "STUDIES", "HRSADAMS", "data", "SOURCE")
# adams_datafolder <- fs::path(sages_datapath, "VDGCP_Stuff")

sages_frozen_date <- "2021-05-03"
ray_date <- str_c(str_sub(sages_frozen_date, 6, 7), 
                  str_sub(sages_frozen_date, 9, 10), 
                  str_sub(sages_frozen_date, 1, 4)
)
sagesI_datafolder <- fs::path(sages_datapath, "SOURCE", "clean", "frozenfiles", str_c("freeze", ray_date))
sages_frozen_date_old <- "2019-04-23"
ray_date_old <- str_c(str_sub(sages_frozen_date_old, 6, 7), 
                      str_sub(sages_frozen_date_old, 9, 10), 
                      str_sub(sages_frozen_date_old, 1, 4)
)
sagesI_datafolder_old <- fs::path(sages_datapath, "SOURCE", "clean", "frozenfiles", str_c("freeze", ray_date_old))

sagesI_bunkerfolder <- fs::path(sages_datapath, "SOURCE", "SAGES-Telephone(Bunker)-workflow", "POSTED", "DATA", "DERIVED")

sagesII_datafolder_npb <- fs::path(sages_datapath, "SOURCE", "SAGESII-Neuropsych")

# sagesII_datafolder <- fs::path(sages_datapath, "SOURCE", "SAGESII-Processing", "Files_2022-08-04")
sagesII_datafolder <- fs::path(sages_datapath, "SOURCE", "SAGESII-clean", "frozenfiles", "2022_10_05_freeze")

sagesII_datafolder_validation <- fs::path(sages_datapath, "SOURCE", "SAGESII-validation")

r_objects_folder <- here::here( "R_objects")

if (!dir_exists(r_objects_folder)) {
  dir_create(r_objects_folder)
}

derivedfolder <- fs::path_home("DOCUMENTS", "DWORK", "SAGES", "POSTED", "DATA", "DERIVED", "HARMONIZATION")
if (!dir_exists(derivedfolder)) {
  dir_create(derivedfolder)
}

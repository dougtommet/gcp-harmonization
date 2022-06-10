
rmarkdown::render(here::here("R", "000-master.Rmd"),
                  params = list(pull_from_googlesheets = TRUE))

fs::file_move(here::here("R", "000-master.html"), 
              here::here("Reports", stringr::str_c("GCP_Harmonization_", Sys.Date(),".html")))

rmarkdown::render(here::here("R", "xxx-Comparison_of_GCP_versions.Rmd"))
fs::file_move(here::here("R", "xxx-Comparison_of_GCP_versions.pptx"), 
              here::here("Reports", stringr::str_c("Comparison_of_GCP_versions_", Sys.Date(),".pptx")))

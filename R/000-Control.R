
rmarkdown::render(here::here("R", "000-master.Rmd"),
                  params = list(pull_from_googlesheets = FALSE))

fs::file_move(here::here("R", "000-master.html"), 
              here::here("Reports", stringr::str_c("GCP_Harmonization_", Sys.Date(),".html")))

rmarkdown::render(here::here("R", "xxx-Comparison_of_GCP_versions.Rmd"))
fs::file_move(here::here("R", "xxx-Comparison_of_GCP_versions.pptx"), 
              here::here("Reports", stringr::str_c("Comparison_of_GCP_versions_", Sys.Date(),".pptx")))

fs::file_move(here::here("R", "xxx-Tables_and_figures_for_manuscript.html"), 
              here::here("Reports", stringr::str_c("Tables_and_figures_for_manuscript_", Sys.Date(),".html")))

fs::file_move(here::here("R", "xxx-DIF_analysis.html"), 
              here::here("Reports", stringr::str_c("DIF_analysis_", Sys.Date(),".html")))

fs::file_move(here::here("R", "xxx-Duke-GCP-tables-and-figures.html"), 
              here::here("Reports", stringr::str_c("Duke_GCP_tables_and_figures_", Sys.Date(),".html")))

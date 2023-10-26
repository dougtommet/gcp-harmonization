# library(tidyverse)
# library(readxl)
# library(haven)
# library(forcats)
# library(knitr)
# # library(kableExtra)
# library(fs)
# library(here)
# # library(googlesheets)
# library(googlesheets4)
# library(ggrepel)
# library(ggsci)
# library(car)
# # library(QSPthemes) # work in progress

# install.packages("devtools")
# devtools::install_github("dougtommet/QSPworkflow")
# devtools::install_github("dougtommet/HarmonizationTools")

packages <- c(
  "tidyverse",
  "readxl",
  "haven",
  "forcats",
  "knitr",
  "kableExtra",
  "fs",
  "here",
  "googlesheets4",
  "ggrepel",
  "ggsci",
  "car"
)
# install.packages("pacman")
pacman::p_load(packages, character.only = TRUE)



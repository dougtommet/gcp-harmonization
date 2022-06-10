rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_df <- readRDS(file=path(r_objects_folder, str_c("024_gcp_df_", gcp_version, ".rds")))


check_if_in_bank <- function(l1, l2) {
  any(l1 %in% l2)
}

total_study_items_in_bank <- function(l1, l2) {
  sum(l1 %in% l2)
}
total_new_items_to_bank <- function(l1, l2) {
  sum(!(l1 %in% l2))
}



gcp_df <- gcp_df %>%
  # select(Study_number, study_items) %>%
  mutate(potential_item_bank_list = purrr::accumulate(study_items, c),
         potential_item_bank_list = purrr::map(potential_item_bank_list, unique),
         potential_item_bank_list = purrr::map(potential_item_bank_list, str_sort),
         l2 = lag(potential_item_bank_list),
         any_study_items_in_bank = purrr::map2_lgl(study_items, l2, check_if_in_bank),
         n_study_items_in_bank = purrr::map2_dbl(study_items, l2, total_study_items_in_bank),
         n_new_items_to_bank = purrr::map2_dbl(study_items, l2, total_new_items_to_bank)
         ) %>%
  select(-l2)

saveRDS(gcp_df, file=path(r_objects_folder, str_c("060_gcp_df_", gcp_version, ".rds")))



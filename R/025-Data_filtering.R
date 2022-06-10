rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

gcp_df_filtered <- readRDS(file=path(r_objects_folder, "023_gcp_df_filtered.rds"))
gcp_items_df <- readRDS(file=path(r_objects_folder, "021_gcp_items_df.rds"))

# adams_df_filtered <- readRDS(file=path(r_objects_folder, "023_adams_df_filtered.rds"))
# adams_items_df <- readRDS(file=path(r_objects_folder, "021_adams_items_df.rds"))

# adams_items_df <- adams_items_df %>%
#   filter(stringr::str_detect(item, "^Q")) 
# 
# adams_items <- adams_items_df %>%
#   pull(item)
# 
# adams_df_long <- adams_df_filtered %>%
#   select(newid, study_wave_number, all_of(adams_items)) %>%
#   pivot_longer(cols = all_of(adams_items), names_to = "item", values_to = "response")
# 
# # If any data filtering is necessary, it would be done here
# # adams_df_long <- adams_df_long %>%
# #   filter()

# gcp_items_df <- gcp_items_df %>%
#   filter(stringr::str_detect(item, "^Q")) 

gcp_items <- gcp_items_df %>%
  pull(item)

# gcp_df_long <- gcp_df_filtered %>%
#   select(newid, study_wave_number, all_of(gcp_items)) %>%
#   pivot_longer(cols = all_of(gcp_items), names_to = "item", values_to = "response") %>%
#   filter(!is.na(response))

# If any data filtering is necessary, it would be done here
# gcp_df_long <- gcp_df_long %>%
#   filter()

# saveRDS(adams_df_long, file=path(r_objects_folder, "025_adams_df_long.rds"))
# saveRDS(adams_items_df, file=path(r_objects_folder, "025_adams_items_df.rds"))
# saveRDS(gcp_df_long, file=path(r_objects_folder, "025_gcp_df_long.rds"))
saveRDS(gcp_items_df, file=path(r_objects_folder, "025_gcp_items_df.rds"))

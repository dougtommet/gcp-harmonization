rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

# It's input is the following R objects:
gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_df <- readRDS(file=path(r_objects_folder, str_c("020_gcp_items_df_", gcp_version, ".rds")))

# It's output is the following R objects:
# saveRDS(gcp_df, file=path(r_objects_folder, "021_gcp_items_df.rds"))


recode_missing_values_fxn <- function(items_df, response_df) {
  
  
  # drop the items from the response data file that did not fit due to content reasons
  # There are no items to drop, but leaving this in just in case there is for a later study
  
  gcp_items_to_drop <- items_df %>%
    filter((recode=="drop"))%>%
    pull(item)
  
  response_df <- response_df %>%
    select(-one_of(gcp_items_to_drop))
  
  # drop the items from the item codebook
  items_df <- items_df %>%
    filter((recode!="drop")|is.na(recode))
  
  
  gcp_lookup_item_values <- items_df %>%
    mutate(foo = str_split(value_label, ";")) %>%
    select(item, source_item, foo) %>%
    mutate(item_number = str_sub(item, 2, -1) %>% as.numeric()) %>%
    unnest(cols = c(foo)) %>%
    filter(!is.na(source_item)) %>%
    filter(!is.na(foo)) %>%
    mutate(foo = str_trim(foo, side = "both"),
           free_indicator = grepl("free", foo, ignore.case = TRUE)) %>%
    separate(foo, c("response", "lab"), sep = "=") %>%
    mutate(response = as.numeric(response),
           lab = str_trim(lab, side = "both"),
           lab = str_to_lower(lab),
           missing.indicator = grepl("[Mm]issing", lab, ignore.case = TRUE)|
             grepl("^NA", lab, ignore.case = TRUE)|
             grepl("NA$", lab, ignore.case = TRUE)|
             grepl("N/A", lab, ignore.case = TRUE)|
             grepl("not applicable", lab, ignore.case = TRUE) |
             grepl("don[[:punct:]]t know", lab, ignore.case = TRUE) |
             grepl("refuse", lab, ignore.case = TRUE)|
             grepl("no response", lab, ignore.case = TRUE)|
             grepl("other", lab, ignore.case = TRUE)|
             grepl("physical", lab, ignore.case = TRUE)|
             grepl("never performed this activity", lab, ignore.case = TRUE)) %>% 
    group_by(item, response) %>%
    mutate(n = row_number()) %>%
    filter(n==1) %>%
    ungroup() %>%
    arrange(item_number, response) %>%
    select(-item_number, -n)
  
  
  
  items_to_set_to_missing <- gcp_lookup_item_values %>% 
    filter(missing.indicator==TRUE) %>%
    pull(source_item)
  
  
  
  for (x in items_to_set_to_missing) {
    gcp_lookup_item_values_filtered <- gcp_lookup_item_values %>% 
      filter(source_item==x)
    n_missing_codes <- gcp_lookup_item_values_filtered %>% count() %>% pull(n)
    
    item1 <- gcp_lookup_item_values_filtered %>% slice(1) %>% pull(source_item)
    qitem1 <- gcp_lookup_item_values_filtered %>% slice(1) %>%  pull(item)
    
    response_df[[{{qitem1}}]] <- response_df[[{{item1}} ]]
    for (i in 1:n_missing_codes) {
      missing_value1 <- gcp_lookup_item_values_filtered %>% slice(i) %>% pull(response)
      item1 <- gcp_lookup_item_values_filtered %>% slice(i) %>% pull(source_item)
      qitem1 <- gcp_lookup_item_values_filtered %>% slice(i) %>%  pull(item)
      response_df <-  response_df  %>%
        mutate({{qitem1}} := case_when(response_df[[{{item1}}]] == {{missing_value1}} ~ NA_real_,
                                       TRUE ~ response_df[[{{qitem1}}]])
        )
    }
    
  }
  
  list(items = items_df, response = response_df)
  
}

gcp_df <- gcp_df %>%
  mutate(goo = purrr::map2(item_data, response_data, recode_missing_values_fxn),
         response_data = purrr::map(goo, pluck, "response"),
         item_data = purrr::map(goo, pluck, "items"),
         hoo = purrr::map2(item_data, response_data_all, recode_missing_values_fxn),
         response_data_all = purrr::map(hoo, pluck, "response")
         ) %>%
  select(-goo, -hoo)

saveRDS(gcp_df, file=path(r_objects_folder, str_c("021_gcp_items_df_", gcp_version, ".rds")))

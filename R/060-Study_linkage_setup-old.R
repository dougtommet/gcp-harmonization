
rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

# gcp_items_df_linked <- readRDS(file=path(r_objects_folder, "050_gcp_items_df_linked.rds"))
gcp_long_df <- readRDS(file=path(r_objects_folder, "024_gcp_long_df.rds"))
gcp_lookup_studies <- readRDS(file=path(r_objects_folder, "010_gcp_lookup_studies.rds"))

# gcp_sample_sizes <- gcp_long_df %>%
#   group_by(study_wave_number) %>%
#   select(study_wave_number, newid) %>%
#   distinct() %>%
#   summarize(n_sample = n())

get_sample_sizes <- function(df) {
  df %>%
    select(newid) %>%
    distinct() %>%
    summarize(n_sample = n()) %>%
    pull(n_sample)
  
}

gcp_df <- gcp_df %>%
  mutate(sample_sizes = purrr::map_dbl(response_data_long, get_sample_sizes)) 

n_items_by_study_fxn <- function(df){
  df %>%
    select(item, response) %>%
    group_by(item) %>%
    summarize_all(list(~sum(!is.na(response)))) %>%
    mutate(item_present = response > 0) %>%
    filter(item_present == TRUE)
}

n_items_by_study <- gcp_df %>%
  select(response_data_long) %>%
  unnest(cols = c(response_data_long)) %>%
  select(item, study_wave_number, response) %>%
  group_by(item, study_wave_number) %>%  
  summarize_all(list(~sum(!is.na(response)))) %>%
  mutate(item_present = response > 0) %>%
  filter(item_present == TRUE) %>%
  group_by(item) %>%
  mutate(item_number = str_sub(item, 2) %>% as.numeric()) %>%
  summarize(linking_study = first(study_wave_number),
            linking_item = n(),
            item_number = first(item_number)) %>%
  arrange(item_number) 


# Create a dataframe that has each studies items and the potential item bank as the studies get linked.

# The process is broken into three steps for clarity
# 1. Get the items administered in a study
# df is long version of response data
get.study.items <- function(df) {
  df %>%
    select(item, response) %>%
    filter(!is.na(response)) %>% 
    select(-response) %>%
    distinct() %>%
    pull(item)
}

foo <- gcp_long_df %>%
  group_by(study_wave_number) %>%
  nest() %>%
  arrange(study_wave_number) %>%
  mutate(study_items_list = map(data, get.study.items)) %>%
  ungroup() 

# 2. Check if there is some linkage between a study's items and the item bank.  If there is a linkage, then add the study's items to the item bank.
check.if.in.bank <- function(l1, l2) {
  any(l1 %in% l2)
}

total.study.items.in.bank <- function(l1, l2) {
  sum(l1 %in% l2)
}
total.new.items.to.bank <- function(l1, l2) {
  sum(!(l1 %in% l2))
}
append.items.to.bank <- function(l1, l2) {
  in.bank <- any(l1 %in% l2)
  if (any(!is.na(l2[1])) & in.bank==TRUE) {
    foo <- c(l1, l2) 
  }
  else if (in.bank==FALSE){
    foo <- l2
  }
  else {
    foo <- l1 
  }
  foo %>%
    unique() %>%
    str_sort()
}


goo <- foo %>%
  ungroup() %>%
  mutate(potential_item_bank_list = case_when(study_wave_number==1 ~ study_items_list,
                                              TRUE ~ list("NA")),
         # Study 1 (ADAMS)
         study_items_in_bank = case_when(study_wave_number==1 ~ map2_lgl(study_items_list, 
                                                                         potential_item_bank_list, 
                                                                       check.if.in.bank),
                                         TRUE ~ NA),
         n_study_items_in_bank = case_when(study_wave_number==1 ~ map2_dbl(study_items_list,
                                                                           potential_item_bank_list,
                                                                         total.study.items.in.bank),
                                           TRUE ~ NA_real_),
         n_new_items_to_bank = case_when(study_wave_number==1 ~ map2_dbl(study_items_list,
                                                                         potential_item_bank_list,
                                                                       total.new.items.to.bank),
                                         TRUE ~ NA_real_),
         l2 = lag(potential_item_bank_list),
         # Study 2 (Sages I)
         study_items_in_bank = case_when(study_wave_number==2 ~ map2_lgl(study_items_list, 
                                                                         l2, 
                                                                         check.if.in.bank),
                                         TRUE ~ study_items_in_bank),
         potential_item_bank_list = case_when(study_wave_number==2 ~ map2(study_items_list,
                                                                        l2, 
                                                                        append.items.to.bank),
                                              TRUE ~ potential_item_bank_list),
         n_study_items_in_bank = case_when(study_wave_number==2 ~ map2_dbl(study_items_list,
                                                                           l2,
                                                                           total.study.items.in.bank),
                                           TRUE ~ n_study_items_in_bank),
         n_new_items_to_bank = case_when(study_wave_number==2 ~ map2_dbl(study_items_list,
                                                                         l2,
                                                                         total.new.items.to.bank),
                                         TRUE ~ n_new_items_to_bank),
         l2 = lag(potential_item_bank_list),
         # Study 3 (Sages II Inperson)
         study_items_in_bank = case_when(study_wave_number==3 ~ map2_lgl(study_items_list, 
                                                                         l2, 
                                                                         check.if.in.bank),
                                         TRUE ~ study_items_in_bank),
         potential_item_bank_list = case_when(study_wave_number==3 ~ map2(study_items_list,
                                                                          l2, 
                                                                          append.items.to.bank),
                                              TRUE ~ potential_item_bank_list),
         n_study_items_in_bank = case_when(study_wave_number==3 ~ map2_dbl(study_items_list,
                                                                           l2,
                                                                           total.study.items.in.bank),
                                           TRUE ~ n_study_items_in_bank),
         n_new_items_to_bank = case_when(study_wave_number==3 ~ map2_dbl(study_items_list,
                                                                         l2,
                                                                         total.new.items.to.bank),
                                         TRUE ~ n_new_items_to_bank),
         l2 = lag(potential_item_bank_list)
  )



# 3. Clean up the nested data frame
append.items <- function(l1) {
  str_c(l1, collapse = " ")
  
}


gcp_study <- goo %>%
  left_join(gcp_lookup_studies, by = c("study_wave_number" = "Study_number")) %>%
  rename(study_name_short = Study) %>%
  rename(study_name_long = Title) %>%
  mutate(items_assessed = map_chr(study_items_list, append.items),
         potential_item_bank = map_chr(potential_item_bank_list, append.items),
         n_study_items = str_count(items_assessed, "Q")
         ) %>%
  select(-data, -l2) %>%
  left_join(gcp_sample_sizes, by = c("study_wave_number" = "study_wave_number")) %>%
  select(study_wave_number, study_name_short, study_name_long, 
         n_sample, 
         items_assessed, potential_item_bank, study_items_in_bank, 
         n_study_items, n_study_items_in_bank, n_new_items_to_bank)

# This is some example code if you want to switch item Qxxx from being calibrated in Study A to calibrated in Study B
# some_study_items <- gcp_study %>%
#   filter(study_wave_number==999) %>%
#   select(items_assessed) %>%
#   mutate(foo = str_split(items_assessed, " ")) %>%
#   select(foo) %>%
#   unnest(foo) %>%
#   mutate(goo = str_trim(foo)) %>%
#   pull(goo)
# some_study_items_newlist <- some_study_items[!(some_study_items %in% c("Qxxx"))]
# some_study_items_newlist <- str_c(some_study_items_newlist, collapse = " ")
some_study_items_newlist <- ""
gcp_study <- gcp_study %>%
  mutate(items_to_link = case_when(study_wave_number==999 ~ some_study_items_newlist,
                                   TRUE ~ items_assessed),
         n_items_to_link = str_count(items_to_link, "\\S+"))


### Save the R objects
saveRDS(gcp_study, file=path(r_objects_folder, "060_gcp_study.rds"))
saveRDS(gcp_sample_sizes, file=path(r_objects_folder, "060_gcp_sample_sizes.rds"))
saveRDS(n_items_by_study, file=path(r_objects_folder, "060_n_items_by_study.rds"))

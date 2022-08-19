

rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))


gcp_study_nested_v1 <- readRDS(file=path(r_objects_folder, "070_gcp_study_nested_GCPv1.rds"))
gcp_study_nested_v2a <- readRDS(file=path(r_objects_folder, "070_gcp_study_nested_GCPv2a.rds"))
gcp_study_nested_v2b <- readRDS(file=path(r_objects_folder, "070_gcp_study_nested_GCPv2b.rds"))
gcp_study_nested_v2c <- readRDS(file=path(r_objects_folder, "070_gcp_study_nested_GCPv2c.rds"))
item_bank_v1 <- read_csv(here("data", "gcp_item_bank_v1.csv"))
item_bank_v2a <- read_csv(here("data", "gcp_item_bank_v2a.csv"))
item_bank_v2b <- read_csv(here("data", "gcp_item_bank_v2b.csv"))
item_bank_v2c <- read_csv(here("data", "gcp_item_bank_v2c.csv"))


theta <- seq(-4, 4, by= .01)
# Map the calc_item_info function over the items

add_item.info_to_hobj_fx <- function(l) {
  l$item_info <- gcp_item_info
  l
}
filter_item_info_fx <- function(l) {
  l$item_info_filtered <- filter(l$item_info, item %in% l$study.items)
  l
}
calc_test_info_fx <- function(l) {
  l$test_info <- l$item_info_filtered %>%
    select(item, item_info) %>%
    unnest(cols = c(item_info)) %>%
    group_by(theta) %>%
    summarize(i = sum(info),
              sem = 1/sqrt(i))
  l
}

## version 1
gcp_item_info <- item_bank_v1 %>%
  group_by(item) %>%
  nest() %>%
  rename(item_bank_v1 = data) %>%
  mutate(item_info = map(item_bank_v1, MplusIRTtools::calc_item_info, theta = theta))

gcp_study_nested_v1 <- gcp_study_nested_v1 %>%
  mutate(h_obj = map(h_obj, add_item.info_to_hobj_fx))

gcp_study_nested_v1 <- gcp_study_nested_v1 %>%
  mutate(h_obj = map(h_obj, filter_item_info_fx))

gcp_study_nested_v1 <- gcp_study_nested_v1 %>%
  mutate(h_obj = map(h_obj, calc_test_info_fx))

## version 2a
gcp_item_info <- item_bank_v2a %>%
  group_by(item) %>%
  nest() %>%
  rename(item_bank_v2a = data) %>%
  mutate(item_info = map(item_bank_v2a, MplusIRTtools::calc_item_info, theta = theta))

gcp_study_nested_v2a <- gcp_study_nested_v2a %>%
  mutate(h_obj = map(h_obj, add_item.info_to_hobj_fx))

gcp_study_nested_v2a <- gcp_study_nested_v2a %>%
  mutate(h_obj = map(h_obj, filter_item_info_fx))

gcp_study_nested_v2a <- gcp_study_nested_v2a %>%
  mutate(h_obj = map(h_obj, calc_test_info_fx))

## version 2b
gcp_item_info <- item_bank_v2b %>%
  group_by(item) %>%
  nest() %>%
  rename(item_bank_v2b = data) %>%
  mutate(item_info = map(item_bank_v2b, MplusIRTtools::calc_item_info, theta = theta))

gcp_study_nested_v2b <- gcp_study_nested_v2b %>%
  mutate(h_obj = map(h_obj, add_item.info_to_hobj_fx))

gcp_study_nested_v2b <- gcp_study_nested_v2b %>%
  mutate(h_obj = map(h_obj, filter_item_info_fx))

gcp_study_nested_v2b <- gcp_study_nested_v2b %>%
  mutate(h_obj = map(h_obj, calc_test_info_fx))

## version 2c
gcp_item_info <- item_bank_v2c %>%
  group_by(item) %>%
  nest() %>%
  rename(item_bank_v2c = data) %>%
  mutate(item_info = map(item_bank_v2c, MplusIRTtools::calc_item_info, theta = theta))

gcp_study_nested_v2c <- gcp_study_nested_v2c %>%
  mutate(h_obj = map(h_obj, add_item.info_to_hobj_fx))

gcp_study_nested_v2c <- gcp_study_nested_v2c %>%
  mutate(h_obj = map(h_obj, filter_item_info_fx))

gcp_study_nested_v2c <- gcp_study_nested_v2c %>%
  mutate(h_obj = map(h_obj, calc_test_info_fx))

saveRDS(gcp_study_nested_v1 , file=path(r_objects_folder, "250_gcp_study_nested_GCPv1.rds"))
saveRDS(gcp_study_nested_v2a, file=path(r_objects_folder, "250_gcp_study_nested_GCPv2a.rds"))
saveRDS(gcp_study_nested_v2b, file=path(r_objects_folder, "250_gcp_study_nested_GCPv2b.rds"))
saveRDS(gcp_study_nested_v2c, file=path(r_objects_folder, "250_gcp_study_nested_GCPv2c.rds"))

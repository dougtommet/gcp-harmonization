rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))

last_itembank_v1 <- tibble(filename = dir_ls(here::here("R_objects"), glob = "*091_uni_item_bank_*.rds")) %>%
  separate(filename, into = c(rep(NA, 9), "itembank_filename"), sep = "/") %>%
  filter(str_detect(itembank_filename, "uni_item_bank")) %>%
  filter(str_detect(itembank_filename, "v1")) %>%
  slice(n()) %>%
  pull(itembank_filename)

last_itembank_v2a <- tibble(filename = dir_ls(here::here("R_objects"), glob = "*091_uni_item_bank_*.rds")) %>%
  separate(filename, into = c(rep(NA, 9), "itembank_filename"), sep = "/") %>%
  filter(str_detect(itembank_filename, "uni_item_bank")) %>%
  filter(str_detect(itembank_filename, "v2a")) %>%
  slice(n()) %>%
  pull(itembank_filename)

last_itembank_v2b <- tibble(filename = dir_ls(here::here("R_objects"), glob = "*091_uni_item_bank_*.rds")) %>%
  separate(filename, into = c(rep(NA, 9), "itembank_filename"), sep = "/") %>%
  filter(str_detect(itembank_filename, "uni_item_bank")) %>%
  filter(str_detect(itembank_filename, "v2b")) %>%
  slice(n()) %>%
  pull(itembank_filename)

last_itembank_v2c <- tibble(filename = dir_ls(here::here("R_objects"), glob = "*091_uni_item_bank_*.rds")) %>%
  separate(filename, into = c(rep(NA, 9), "itembank_filename"), sep = "/") %>%
  filter(str_detect(itembank_filename, "uni_item_bank")) %>%
  filter(str_detect(itembank_filename, "v2c")) %>%
  slice(n()) %>%
  pull(itembank_filename)

item_bank_v1 <- readRDS(file=path(r_objects_folder, last_itembank_v1))
item_bank_v2a <- readRDS(file=path(r_objects_folder, last_itembank_v2a))
item_bank_v2b <- readRDS(file=path(r_objects_folder, last_itembank_v2b))
item_bank_v2c <- readRDS(file=path(r_objects_folder, last_itembank_v2c))

new_item_bank_v1 <- item_bank_v1 %>%
  arrange(item_number, parameter_threshold) 
new_item_bank_v2a <- item_bank_v2a %>%
  arrange(item_number, parameter_threshold) 
new_item_bank_v2b <- item_bank_v2b %>%
  arrange(item_number, parameter_threshold) 
new_item_bank_v2c <- item_bank_v2c %>%
  arrange(item_number, parameter_threshold) 

write_csv(new_item_bank_v1, path(here(), "data", "gcp_item_bank_v1.csv"))
write_csv(new_item_bank_v2a, path(here(), "data", "gcp_item_bank_v2a.csv"))
write_csv(new_item_bank_v2b, path(here(), "data", "gcp_item_bank_v2b.csv"))
write_csv(new_item_bank_v2c, path(here(), "data", "gcp_item_bank_v2c.csv"))


rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here::here("R", "002-folder-paths-and-options.R"))

gcp_study_nested <- readRDS(file=path(r_objects_folder, "070_gcp_study_nested.rds"))

final_summarize_function <- function(filename, study.nested.named, 
                                     study.wave.number.named, mplus.output, 
                                     new.itembank.named, old.itembank.named,
                                     study.nested.rds, df_name,
                                     new.itembank.rds, old.itembank.rds,
                                     external.text.file=NA) {
  
  if(file_exists(here("R", filename))) {
    file_delete(here("R", filename))
  }
  file_create(here("R", filename))
  
  cat(str_c("```{r} "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% c('params'))])"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("source(here::here('R', '002-folder-paths-and-options.R')) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("``` "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("```{r} "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("# It's input is the following R objects: "), append = TRUE, file = here("R", filename), sep = "\n")
  # cat(str_c(response.df.named,  " <- read_feather(path=path(r_objects_folder, '", response.df.feather,  "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  # cat(str_c(item.df.named,      " <- readRDS(file=path(r_objects_folder, '", item.df.rds,      "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  # cat(str_c(study.df.named,     " <- readRDS(file=path(r_objects_folder, '", study.df.rds,     "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(study.nested.named, " <- readRDS(file=path(r_objects_folder, '", study.nested.rds, "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(new.itembank.named, " <- readRDS(file=path(r_objects_folder, '", new.itembank.rds, "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(old.itembank.named, " <- readRDS(file=path(r_objects_folder, '", old.itembank.rds, "')) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("``` "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("### `r ", study.nested.named, " %>% filter(study_wave_number == ", study.wave.number.named, ") %>% pull(study_name_short)`"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  if (!is.na(external.text.file)) {
    cat(str_c("```{r, comment='', results='asis'}"), append = TRUE, file = here("R", filename), sep = "\n")
    cat(str_c("cat(readLines('", external.text.file, "'), sep = '\\n')"), append = TRUE, file = here("R", filename), sep = "\n")
    cat(str_c("```"), append = TRUE, file = here("R", filename), sep = "\n")
  }
  
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("#### Item descriptive statistics"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("```{r, results='asis'}"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("ggg <- ", study.nested.named, " %>% "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("  filter(study_wave_number == ", study.wave.number.named, ") "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("ggg <- ggg[['h_obj']][[1]] "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("HarmonizationTools::create_summary_report(ggg, ", old.itembank.named, ")"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("```"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("#### Standardized Item parameters"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("```{r}"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("summarized_response_df <- HarmonizationTools::summarize_response_df(ggg, df_name = '",df_name , "') "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("item.parameters <- HarmonizationTools::get_item_parameters(summarized_response_df, "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("   mplus.output = here::here('mplus_output', ", "'",mplus.output, "'),"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("   h_obj = ggg,"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("   itembank = ", old.itembank.named), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(") "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("  t.names <- item.parameters %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    distinct(threshold) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    filter(!is.na(threshold)) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    pull(threshold) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    str_c('t', .)"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("  item.parameters <- item.parameters %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    select(in.itembank, item, item_number, parameter_threshold, estimate.stdyx) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    filter(!str_detect(parameter_threshold, '^s')) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    pivot_wider(names_from = parameter_threshold, values_from = estimate.stdyx) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    arrange(item_number) "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("  item.parameters %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    select(-item_number) %>% "), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("    kable(col.names = c('In Itembank', 'Item', 'g', t.names),"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("          digits = 2) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("        kable_styling(bootstrap_options = kable.styling.bootstrap.option, full_width = F,"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("                      position = kable.styling.position.option) %>%"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("         scroll_box(height = '600px')"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("```"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("#### Summary of item bank"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("```{r, results='asis'}"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("  newbank <- ", new.itembank.named, " %>% filter(!str_detect(parameter_threshold, '^s'))"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("  oldbank <- ", old.itembank.named, " %>% filter(!str_detect(parameter_threshold, '^s'))"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("  HarmonizationTools::compare_itembanks_tables(newbank, oldbank, standardized = TRUE)"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("```"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
  cat(str_c("```{r}"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("  HarmonizationTools::compare_itembanks_plots(newbank, oldbank, standardized = TRUE)"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c("```"), append = TRUE, file = here("R", filename), sep = "\n")
  cat(str_c(" "), append = TRUE, file = here("R", filename), sep = "\n")
  
}

last.mplus.output <- tibble(filename = dir_ls(here::here("mplus_output"), glob = "*link*.out")) %>%
  separate(filename, into = c(rep(NA, 9), "last_mplus_filename"), sep = "/") %>%
  filter(str_detect(last_mplus_filename, "uni-mlr")) %>%
  mutate(study_order = str_sub(last_mplus_filename, 6, 7) %>% as.numeric()) %>%
  group_by(study_order) %>%
  slice(n())


gcp_study_nested %>%
  mutate(study_order = map_dbl(gcp.study, pull, "study_order")) %>%
  left_join(last.mplus.output, by = "study_order") %>%
  mutate(filename = str_c(100+study_order, "-link-", study_name_short2, ".Rmd"),
         mplus.output = last_mplus_filename,
         # mplus.output = str_c("link", str_pad(study_order, 2, "left", "0"), "-", study_name_short2, ".out"),
         new.itembank = str_c("uni.item.bank.", str_pad(study_order, 2, "left", "0")),
         old.itembank = str_c("uni.item.bank.", str_pad(study_order-1, 2, "left", "0")),
         new.itembank.rds = str_c("090_uni_item_bank_", str_pad(study_order, 2, "left", "0"), ".rds"),
         old.itembank.rds = str_c("090_uni_item_bank_", str_pad(study_order-1, 2, "left", "0"), ".rds"),
  ) %>%
  mutate(old.itembank = case_when(study_order==1 ~ "empty.item.bank",
                                  TRUE ~ old.itembank),
         old.itembank.rds = case_when(study_order==1 ~ "070_empty_item_bank.rds",
                                      TRUE ~ old.itembank.rds))  %>%
  mutate(goo = pmap(list(filename = filename,
                         study.nested.named = "gcp_study_nested",
                         study.wave.number.named = study_wave_number,
                         mplus.output = mplus.output,
                         new.itembank.named = new.itembank,
                         old.itembank.named = old.itembank,
                         study.nested.rds = "070_gcp_study_nested.rds",
                         df_name = "response_df_filtered",
                         new.itembank.rds = new.itembank.rds,
                         old.itembank.rds = old.itembank.rds),
                    final_summarize_function))



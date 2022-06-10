rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% "params")])
source(here("R", "005-folder_paths_and_options.R"))


# ##################################################
# gcp_items_df <- readRDS(file=path(r_objects_folder, "021_gcp_items_df.rds"))
# gcp_df_filtered <- readRDS(file=path(r_objects_folder, "021_gcp_df_filtered.rds"))
# 
# gcp_recode_statements <- gcp_items_df %>%
#   select(item, source_item, recode) %>%
#   filter(!is.na(recode)) %>%
#   mutate(foo = str_split(recode, ";")) %>%
#   unnest(cols = c(foo)) %>%
#   select(-recode) %>%
#   separate(foo, into=c("recoded_to", "from"), sep = "=") %>%
#   mutate(recoded_to = str_trim(recoded_to, side = "both"),
#          from = str_trim(from, side = "both")) %>%
#   filter(!is.na(recoded_to)) %>%
#   separate(from, into=c("f_begin", "f_end"), sep = "-") %>%
#   mutate(f_end = case_when(f_end == "max" ~ "hi",
#                            TRUE ~ f_end),
#          f_end = str_trim(f_end, side = "both"),
#          f_begin = str_trim(f_begin, side = "both"),
#          recoded_to = as.numeric(recoded_to),
#          car_recode = glue::glue("{f_begin}:{f_end} = {recoded_to}")
#   ) %>%
#   arrange(item, recoded_to) %>%
#   group_by(item) %>%
#   summarize(source_item = first(source_item),
#             recode = str_c(car_recode, collapse = "; "))
# 
# gcp_transform_statements <- gcp_items_df %>%
#   select(item, transform) %>%
#   filter(!is.na(transform))
# 
# # The missing values step creates some of the Q-items
# items_already_created <- gcp_items_df %>%
#   filter(!is.na(value_label)) %>%
#   pull(item)
# 
# # So the recoding step will consist of two parts:
# # First - the items that were created in the missing values step
# # Second - the items that need to be created still
# items_to_recode <- gcp_recode_statements %>% pull(item)
# items_to_recode_already_created <- items_to_recode[items_to_recode %in% items_already_created]
# items_to_recode_need_to_create <- items_to_recode[!items_to_recode %in% items_already_created]
# 
# for (x in items_to_recode_already_created) {
#   recode1 <- gcp_recode_statements %>% filter(item==x) %>% pull(recode)
#   qitem1 <- gcp_recode_statements %>% filter(item==x) %>% pull(item)
#   gcp_df_filtered <-  gcp_df_filtered  %>%
#     mutate({{qitem1}} := car::recode(gcp_df_filtered[[{{qitem1}}]], {{recode1}})
#     )
# }
# 
# # Before we can do the second step we need to do the transformations step
# 
# 
# n_items_to_transform <- gcp_transform_statements %>% count() %>% pull(n)
# # https://stackoverflow.com/questions/52185987/how-to-evaluate-expressions-inside-mutate/52186267
# for (i in 1:n_items_to_transform) {
#   transform1 <- gcp_transform_statements %>% slice(i) %>% pull(transform)
#   qitem1     <- gcp_transform_statements %>% slice(i) %>% pull(item)
#   gcp_df_filtered <-  gcp_df_filtered  %>%
#     rowwise() %>%
#     mutate({{qitem1}} := !!rlang::parse_quo(transform1, env = rlang::caller_env())
#     )
# }
# gcp_df_filtered <- gcp_df_filtered %>%
#   ungroup()
# 
# # Finish the second step of the recoding
# for (x in items_to_recode_need_to_create) {
#   recode1 <- gcp_recode_statements %>% filter(item==x) %>% pull(recode)
#   item1   <- gcp_recode_statements %>% filter(item==x) %>% pull(source_item)
#   qitem1  <- gcp_recode_statements %>% filter(item==x) %>% pull(item)
#   gcp_df_filtered <-  gcp_df_filtered  %>%
#     mutate({{qitem1}} := car::recode(gcp_df_filtered[[{{item1}}]], {{recode1}})
#     )
# }
# 
# 
# ### Save the R objects
# saveRDS(gcp_df_filtered, file=path(r_objects_folder, "023_gcp_df_filtered.rds"))


recode_transformation_fxn <- function(items_df, response_df) {
  
  
  gcp_recode_statements <- items_df %>%
    select(item, source_item, recode) %>%
    filter(!is.na(recode)) %>%
    mutate(foo = str_split(recode, ";")) %>%
    unnest(cols = c(foo)) %>%
    select(-recode) %>%
    separate(foo, into=c("recoded_to", "from"), sep = "=") %>%
    mutate(recoded_to = str_trim(recoded_to, side = "both"),
           from = str_trim(from, side = "both")) %>%
    filter(!is.na(recoded_to)) %>%
    separate(from, into=c("f_begin", "f_end"), sep = "-") %>%
    mutate(f_end = case_when(f_end == "max" ~ "hi",
                             TRUE ~ f_end),
           f_end = str_trim(f_end, side = "both"),
           f_begin = str_trim(f_begin, side = "both"),
           recoded_to = as.numeric(recoded_to),
           car_recode = glue::glue("{f_begin}:{f_end} = {recoded_to}")
    ) %>%
    arrange(item, recoded_to) %>%
    group_by(item) %>%
    summarize(source_item = first(source_item),
              recode = str_c(car_recode, collapse = "; "))
  
  gcp_transform_statements <- items_df %>%
    select(item, transform) %>%
    filter(!is.na(transform))
  
  # The missing values step creates some of the Q-items
  items_already_created <- items_df %>%
    filter(!is.na(value_label)) %>%
    pull(item)
  
  # So the recoding step will consist of two parts:
  # First - the items that were created in the missing values step
  # Second - the items that need to be created still
  items_to_recode <- gcp_recode_statements %>% pull(item)
  items_to_recode_already_created <- items_to_recode[items_to_recode %in% items_already_created]
  items_to_recode_need_to_create <- items_to_recode[!items_to_recode %in% items_already_created]
  
  for (x in items_to_recode_already_created) {
    recode1 <- gcp_recode_statements %>% filter(item==x) %>% pull(recode)
    qitem1 <- gcp_recode_statements %>% filter(item==x) %>% pull(item)
    response_df <-  response_df  %>%
      mutate({{qitem1}} := car::recode(response_df[[{{qitem1}}]], {{recode1}})
      )
  }
  
  # Before we can do the second step we need to do the transformations step
  
  
  n_items_to_transform <- gcp_transform_statements %>% count() %>% pull(n)
  if (n_items_to_transform>0) {
    # https://stackoverflow.com/questions/52185987/how-to-evaluate-expressions-inside-mutate/52186267
    for (i in 1:n_items_to_transform) {
      transform1 <- gcp_transform_statements %>% slice(i) %>% pull(transform)
      qitem1     <- gcp_transform_statements %>% slice(i) %>% pull(item)
      # response_df <-  response_df  %>%
      #   rowwise() %>%
      #   mutate({{qitem1}} := !!rlang::parse_quo(transform1, env = rlang::caller_env()),
      #          {{qitem1}} := case_when({{qitem1}} == -Inf ~ NA_real_,
      #                                  TRUE ~ {{qitem1}})
      #   )
      response_df <-  response_df  %>%
        rowwise() %>%
        mutate(x_tmp = !!rlang::parse_quo(transform1, env = rlang::caller_env()) ,
               {{qitem1}} := case_when(x_tmp == -Inf ~ NA_real_,
                                       TRUE ~ x_tmp)
        )
    }
    response_df <- response_df %>%
      ungroup() %>%
      select(-x_tmp)
  }
  
  # Finish the second step of the recoding
  for (x in items_to_recode_need_to_create) {
    recode1 <- gcp_recode_statements %>% filter(item==x) %>% pull(recode)
    item1   <- gcp_recode_statements %>% filter(item==x) %>% pull(source_item)
    qitem1  <- gcp_recode_statements %>% filter(item==x) %>% pull(item)
    response_df <-  response_df  %>%
      mutate({{qitem1}} := car::recode(response_df[[{{item1}}]], {{recode1}})
      )
  }
  
  
  list(items = items_df, response = response_df)
  
}
gcp_version <- readRDS(file=path(r_objects_folder, "000_gcp_version.rds"))
gcp_df <- readRDS(file=path(r_objects_folder, str_c("021_gcp_items_df_", gcp_version, ".rds")))

gcp_df <- gcp_df %>%
   mutate(goo = purrr::map2(item_data, response_data, recode_transformation_fxn),
         response_data = purrr::map(goo, pluck, "response"),
         item_data = purrr::map(goo, pluck, "items"),
         hoo = purrr::map2(item_data, response_data_all, recode_transformation_fxn),
         response_data_all = purrr::map(hoo, pluck, "response")
         ) %>%
  select(-goo, -hoo)

saveRDS(gcp_df, file=path(r_objects_folder, str_c("023_gcp_items_df_", gcp_version, ".rds")))

# 
# adams_df_filtered <-                readRDS(file=path(r_objects_folder, "021_adams_df_filtered.rds"))
# sagesI_df_bl_filtered <-            readRDS(file=path(r_objects_folder, "021_sagesI_df_bl_filtered.rds"))
# sagesII_inperson_df_bl_filtered <-  readRDS(file=path(r_objects_folder, "021_sagesII_inperson_df_bl_filtered.rds"))
# sagesII_telephone_df_bl_filtered <- readRDS(file=path(r_objects_folder, "021_sagesII_telephone_df_bl_filtered.rds"))
# sagesII_video_df_bl_filtered <-     readRDS(file=path(r_objects_folder, "021_sagesII_video_df_bl_filtered.rds"))
# adams_items_df <-                   readRDS(file=path(r_objects_folder, "021_adams_items_df.rds"))
# sagesI_items_df <-                  readRDS(file=path(r_objects_folder, "021_sagesI_items_df.rds"))
# sagesII_inperson_items_df <-        readRDS(file=path(r_objects_folder, "021_sagesII_inperson_items_df.rds"))
# sagesII_telephone_items_df <-       readRDS(file=path(r_objects_folder, "021_sagesII_telephone_items_df.rds"))
# sagesII_video_items_df <-           readRDS(file=path(r_objects_folder, "021_sagesII_video_items_df.rds"))
# 
# 
# foo <- recode_transformation_fxn(adams_items_df, adams_df_filtered)
# adams_items_df <- foo[["items"]]
# adams_df_filtered <- foo[["response"]]
# foo <- recode_transformation_fxn(sagesI_items_df, sagesI_df_bl_filtered)
# sagesI_items_df <- foo[["items"]]
# sagesI_df_bl_filtered <- foo[["response"]]
# foo <- recode_transformation_fxn(sagesII_inperson_items_df, sagesII_inperson_df_bl_filtered)
# sagesII_inperson_items_df <- foo[["items"]]
# sagesII_inperson_df_bl_filtered <- foo[["response"]]
# foo <- recode_transformation_fxn(sagesII_telephone_items_df, sagesII_telephone_df_bl_filtered)
# sagesII_telephone_items_df <- foo[["items"]]
# sagesII_telephone_df_bl_filtered <- foo[["response"]]
# foo <- recode_transformation_fxn(sagesII_video_items_df, sagesII_video_df_bl_filtered)
# sagesII_video_items_df <- foo[["items"]]
# sagesII_video_df_bl_filtered <- foo[["response"]]
# 
# 
# saveRDS(adams_df_filtered,                file=path(r_objects_folder, "023_adams_df_filtered.rds"))
# saveRDS(sagesI_df_bl_filtered,            file=path(r_objects_folder, "023_sagesI_df_bl_filtered.rds"))
# saveRDS(sagesII_inperson_df_bl_filtered,  file=path(r_objects_folder, "023_sagesII_inperson_df_bl_filtered.rds"))
# saveRDS(sagesII_telephone_df_bl_filtered, file=path(r_objects_folder, "023_sagesII_telephone_df_bl_filtered.rds"))
# saveRDS(sagesII_video_df_bl_filtered,     file=path(r_objects_folder, "023_sagesII_video_df_bl_filtered.rds"))
# saveRDS(adams_items_df,                   file=path(r_objects_folder, "023_adams_items_df.rds"))
# saveRDS(sagesI_items_df,                  file=path(r_objects_folder, "023_sagesI_items_df.rds"))
# saveRDS(sagesII_inperson_items_df,        file=path(r_objects_folder, "023_sagesII_inperson_items_df.rds"))
# saveRDS(sagesII_telephone_items_df,       file=path(r_objects_folder, "023_sagesII_telephone_items_df.rds"))
# saveRDS(sagesII_video_items_df,           file=path(r_objects_folder, "023_sagesII_video_items_df.rds"))











# foo <- gcp_df_filtered %>%
#   filter(study_wave_number==1) %>%
#   slice(c(49, 63, 448)) %>%
#   select(newid, AASAMPWT_F, ANDELCOR, i011, Q109, ANIMMCR1, ANIMMCR2, ANIMMCR3, i014, i015, i016, i021, Q105, everything())
# foo
# 
# gcp_df_filtered %>%
#   filter(study_wave_number==1) %>%
#   gtsummary::tbl_cross(i021, Q105)



# case_when(sum(is.na(i014), is.na(i015), is.na(i016)) == 2 ~sum(c(i014, i015, i016), na.rm=TRUE)*(3/1),
#           sum(is.na(i014), is.na(i015), is.na(i016)) == 1 ~sum(c(i014, i015, i016), na.rm=TRUE)*(3/2),
#           sum(is.na(i014), is.na(i015), is.na(i016)) == 0 ~sum(c(i014, i015, i016), na.rm=TRUE)*(3/3))

# case_when(sum(is.na(i142), is.na(i143), is.na(i144)) == 2 ~sum(c(i142, i143, i144), na.rm=TRUE)*(3/1),
#           sum(is.na(i142), is.na(i143), is.na(i144)) == 1 ~sum(c(i142, i143, i144), na.rm=TRUE)*(3/2),
#           sum(is.na(i142), is.na(i143), is.na(i144)) == 0 ~sum(c(i142, i143, i144), na.rm=TRUE)*(3/3))
# 
# case_when(sum(is.na(i105), is.na(i106), is.na(i107)) == 2 ~sum(c(i105, i106, i107), na.rm=TRUE)*(3/1),
#           sum(is.na(i105), is.na(i106), is.na(i107)) == 1 ~sum(c(i105, i106, i107), na.rm=TRUE)*(3/2),
#           sum(is.na(i105), is.na(i106), is.na(i107)) == 0 ~sum(c(i105, i106, i107), na.rm=TRUE)*(3/3))
# 
# case_when(sum(is.na(i102), is.na(i103)) == 1 ~sum(c(i102, i103), na.rm=TRUE)*(2/1),
#           sum(is.na(i102), is.na(i103)) == 0 ~sum(c(i102, i103), na.rm=TRUE)*(2/2))
# 
# case_when(sum(is.na(i182), is.na(i183), is.na(i184)) == 2 ~sum(c(i182, i183, i184), na.rm=TRUE)*(3/1),
#           sum(is.na(i182), is.na(i183), is.na(i184)) == 1 ~sum(c(i182, i183, i184), na.rm=TRUE)*(3/2),
#           sum(is.na(i182), is.na(i183), is.na(i184)) == 0 ~sum(c(i182, i183, i184), na.rm=TRUE)*(3/3))



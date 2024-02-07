# Package management
# CRAN
packages <- c(  
  "conflicted",      # Package conflicts return error
  "expss" ,          # Tools for variable and value labels 
  
  "fs"    ,          # file system
  "glue",            # Strings
  "here",
  "Hmisc",           # Frank Harrell misc functions
  
  "labelled" ,       # for working with labelled data (HW is involved)
  "misty" ,          # for computing sum scores with proration
  
  "psych",           # Misc functions
  "rms",             # Regression modeling strategies (Frank Harrell)
  
  "sjmisc" ,         # nice functions for labeled data
  "sjPlot" ,         # codebook
  "tidyverse" ,      # The tidyverse, see below
  "VIM" ,            # for hotdeck imputation
  "qpdf"            # Manage PDFs (e.g., add passwords)
  
)
#                       Note tidyverse includes:
#                         broom, 
#                         conflicted, cli, 
#                         dbplyr, dplyr, dtplyr, 
#                         forcats, 
#                         ggplot2 , googledrive, googlesheets4,
#                         haven, hms, httr, 
#                         jsonlite, 
#                         lubridate,
#                         matrittr, modelr,
#                         pillar, purrr,
#                         ragg, readr, readxl, reprex, rlang, rstudioapi, rvest,
#                         stringr, tibble, tidyr, 
#                         xml2
# Github
git_packages <- c(
  "rmcelreath/rethinking@slim", # Precis for summary
  "dougtommet/QSPtools"   ,      # Local tools
  "dougtommet/QSPworkflow"         # Local tools
  
)



pacman::p_load(packages, character.only = TRUE)
pacman::p_load_gh(git_packages)

conflicts_prefer(dplyr::filter)

rm(packages)
rm(git_packages)

# ------------------------------------------------------------

# End of package management


# define the label list function
# label_list <- function(x) {
#    # Use the attr() function to access variable labels for all variables
#    foo <- as.matrix(lapply(x, function(x) attr(x, "label")))
#    label <- data.frame(variable = row.names(foo), label=foo)
#    rm(foo)
#    rownames(label) <- NULL
#    # Print the list of variable labels
#    # print(label)
#    label
# }

label_list <- function(df) {
  foo <- purrr::map_df(df, function(x) {if (!is.null(attr(x, "label"))) {attr(x, "label")} else{NA}  }  )
  goo <- foo %>%
    tidyr::pivot_longer(cols = everything(), names_to= "variable", values_to="label") %>%
    mutate(label = stringr::str_squish(label))
  goo
}

# define the label list function
# vlabels <- function(data, variable_name) {
#    selected_variable <- data[[variable_name]]
#    sjlabelled::get_labels(selected_variable, values ="p")
# }


# Quasi-permutation sample estimate of mean split-half reliability and
# 95% Confidence Limits for sum scales with ordinal items
qp40shr <- function(x) { # x is a data frame containing only items
  reliabilities <- numeric()
  data <- x
  # Initialize a vector to store split-half reliability
  reliabilities <- numeric()
  # calculate the reliability for 40 random split halves
  # Why 40? Because after having 40, the 2nd and 39th
  # values approximate 95% confidence limits
  for (i in 1:40) {
    # Randomly reorder the variables
    shuffled_indices <- sample(1:ncol(data))  # Shuffle column indices
    halfitemsfloor <- trunc(ncol(data)/2)
    halfitemsceiling <-halfitemsfloor+1 
    data <- data[, shuffled_indices]  # Reorder the columns
    # Calculate the total scores for the two halves
    half1_total <- rowSums(data[, 1:halfitemsfloor])  # First half items
    half2_total <- rowSums(data[, halfitemsceiling:ncol(data)]) # Last half items
    # Calculate the correlation between the two halves
    correlation <- cor(half1_total, half2_total)
    # Use the Spearman-Brown prophecy formula to estimate split-half reliability
    reliability <- (2 * correlation) / (1 + correlation)
    # Store the reliability in the vector
    reliabilities <- c(reliabilities, reliability)
  }
  # Calculate the mean
  mean_reliability <- round(mean(reliabilities),3)
  # Approximate 95% Confidence limits at the 2nd and 39th values of quasi-
  # permutation distribution
  sorted_reliabilities <- sort(reliabilities)  # Sort the values in ascending order
  ul <- round(sorted_reliabilities[[39]],3)
  ll <- round(sorted_reliabilities[[2]],3)
  result <- paste("In this sample the mean split half reliability is", mean_reliability, "with an 95% confidence interval of",ll,"\u2014",ul,"over 40 quasi-permutation samples.")
  cat("\n",result, "\n\n")
  result <- c(mean_reliability,ll,ul)
  return(result)
}




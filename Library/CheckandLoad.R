check.packages <- function(pkg) 
{
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, library, character.only = TRUE)
}

packages <- c('xlsx', 'car', 'dplyr', 'caret', 'ROCR')

check.packages(packages)

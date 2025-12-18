# create function for package recall
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }


# create variable to concatenate necessary packages
packages <- c("tidyverse", "palmerpenguins", "rmarkdown", "ggthemes", 
              "RColorBrewer", "viridis", "ggdark", "plotly", 
              "lterdatasampler", "rstatix", "lubridate")


# load in packages variable
packageLoad(packages)




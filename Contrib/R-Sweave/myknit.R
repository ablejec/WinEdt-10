#
library(knitr)
# reading arguments
args <- commandArgs(TRUE)
file <- args[1]
knit(file)

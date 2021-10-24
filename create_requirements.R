# Create requirements
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
pkgs <- as.character(installed.packages()[,c(1)])
lapply(pkgs, write, "Rpackages.txt", append=TRUE, ncolumns=1000)
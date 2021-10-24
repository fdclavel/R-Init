setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
reqs <- scan("Rpackages.txt", character(), quote="")
pkgs <- as.character(installed.packages()[,c(1)])
install_pkgs <- pkgs[!(pkgs %in% reqs)]

if(length(install_pkgs) > 0) {
  install.packages(install_pkgs)
} else {
  message("PROCESS COMPLETE. PACKAGES INSTALLED: 0")
  message("INSTALLATION ABORTED - ALL PACKAGE REQUIREMENTS ALREADY SATISFIED")
}

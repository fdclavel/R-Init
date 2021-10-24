setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
reqs <- scan("Rpackages.txt", character(), quote="")
pkgs <- as.character(installed.packages()[,c(1)])
install_pkgs <- pkgs[!(pkgs %in% reqs)]

if(length(install_pkgs) > 0) {
  message("ALERT: ", length(install_pkgs), " new packages ready to install.")
  message("ALERT: Installing multiple packages can take several minutes.")
  yn = readline(prompt="PROCEED WITH INSTALLATION? Please select [y/n]: ")
  if(yn == "y" | yn == "Y") {
    install.packages(install_pkgs)
  } else {
      message("ALERT: Process terminated by user or invalid command received.")
    }
  
  } else {
  message("PROCESS COMPLETE. PACKAGES INSTALLED: 0")
  message("INSTALLATION ABORTED - ALL PACKAGE REQUIREMENTS ALREADY SATISFIED")
}

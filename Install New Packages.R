#R Package installer script for new installs of R.

#***********************************************
#Will install and mount the following packages:
#***********************************************

# potential linux errors:
# 
# Using PKG_CFLAGS=
#   Using PKG_LIBS=-lxml2
#   ------------------------- ANTICONF ERROR ---------------------------
#     Configuration failed because libxml-2.0 was not found. Try installing:
#     * deb: libxml2-dev (Debian, Ubuntu, etc)
#   * rpm: libxml2-devel (Fedora, CentOS, RHEL)
#   * csw: libxml2_dev (Solaris)
#   If libxml-2.0 is already installed, check that 'pkg-config' is in your
#   PATH and PKG_CONFIG_PATH contains a libxml-2.0.pc file. If pkg-config
#   is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
#     R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
#   --------------------------------------------------------------------
# to add to Ubuntu/Debian you may need:
# sudo apt-get install -y libxml2-dev
# sudo apt-get install -y libcurl4-openssl-dev
# sudo apt-get install -y libssl-dev


# ---------------------
# DEVELOPMENT AND WEB PACKAGES
install.packages("devtools")

#---------------
#FILE IMPORTING PACKAGES
#---------------

#foreign (install S, SAS, SPSS, Stata)
#Hmisc (import other formats including transport files, and converting value labels into factors)
#tidyverse (includes ggplot, psych, and import/export capability for csv, SAS, and SPSS files)
#haven (read spss files as data frames [imported as tibbles])
install.packages("foreign")
install.packages("Hmisc")
install.packages("tidyverse")
install.packages("haven")

#---------------
#ANALYTICS PACKAGES
#---------------

#nlme (linear and nonlinear mixed effects modeling)
#lme4 (linear mixed effects models)
#psych (includes many common procedures in psychological statistics)
#sem (structural equations modeling with latent and manifest variables)
#lavaan (SEM and growth curves. can also process Mplus input programs with mplus2lavaan)
#MASS (multivariate simulations)
#mice and miceadds (conduct multiple imputation across various test types)
#rpart - machine learning
#xgb - gradient boosted models
install.packages("nlme")
install.packages("lme4")
install.packages("psych")
install.packages("sem")
install.packages("lavaan")
install.packages("MASS")
install.packages("mice")
install.packages("miceadds")
install.packages("rpart")
install.packages("xgboost")
install.packages("curl")

#------------
#DATA MANAGEMENT/MANIPULATION PACKAGES
#------------

#reshape (rename and reorder variables, reformat data sets from L-to-W/W-to-L)
#simstudy (simulate new data, incl mlm and longit, corr variables)
#DT (format interactive data tables in markdown files)
install.packages("reshape")
install.packages("simstudy")
install.packages("DT")


#FORMATTING PACKAGES
#stargazer (for ascii enabled  and LaTeX/HTML regression and summary stats tables
#ascii (export R objects to ascii for use in other markup languages
#ggplot2 (graphics export and formatting)
#ggthemes (extra themes and geoms for ggplot2)
#apaTables (conduct & export basic analyses to APA formatted tables)
#prettyR (create nicer looking descriptive output)
#LaTex (installs equation drafting language for markdown files)
#kableExtra (format nicer looking tables in markdown files)
#extrafont (installs all available windows fonts into R - requires the extra step below)
install.packages("stargazer")
install.packages("ascii")
install.packages("ggplot2")
install.packages("ggthemes")
install.packages("apaTables")
install.packages("prettyR")
install.packages("LaTex")
install.packages("kableExtra")
install.packages("extrafont")

# extra steps for extrafont.

# run the loadfonts() function to import all your 
# system fonts. Depending on how many fonts you 
# have on your machine, this can take several minutes
# to process. My first time, I had about 400 fonts, and
# the procedure took roughly 3 minutes to finish.
#loadfonts(device="pdf")
#fonts()
#windowsF
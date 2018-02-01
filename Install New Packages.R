#R Package installer script for new installs of R.

#***********************************************
#Will install and mount the following packages:
#***********************************************

#IMPORT PACKAGES
#foreign (install S, SAS, SPSS, Stata)
#Hmisc (import other formats including transport files, and converting value labels into factors)
#tidyverse (includes ggplot, psych, and import/export capability for csv, SAS, and SPSS files)
install.packages("foreign")
install.packages("Hmisc")
install.packages("tidyverse")
library("foreign")
library("Hmisc")
library("tidyverse")

#ANALYTIC PROCEDURE PACKAGES
#nlme (linear and nonlinear mixed effects modeling)
#lme4 (linear mixed effects models)
#psych (includes many common procedures in psychological statistics)
#sem (structural equations modeling with latent and manifest variables)
install.packages("nlme")
install.packages("lme4")
install.packages("psych")
install.packages("sem")
library("nlme")
library("lme4")
library("psych")
library("sem")


#DATA MANAGEMENT/MANIPULATION PACKAGES
#reshape (rename and reorder variables, reformat data sets from L-to-W/W-to-L)
install.packages("reshape")
library("reshape")



#FORMATTING PACKAGES
#stargazer (for ascii enabled  and LaTeX/HTML regression and summary stats tables
#ascii (export R objects to ascii for use in other markup languages
#ggplot2 (graphics export and formatting)
install.packages("stargazer")
install.packages("ascii")
install.packages("ggplot2")
library("stargazer")
library("ascii")
library("ggplot2")
#R Package installer script for new installs of R.

#***********************************************
#Will install and mount the following packages:
#***********************************************

#---------------
#IMPORT PACKAGES
#---------------

    #foreign (install S, SAS, SPSS, Stata)
    #Hmisc (import other formats including transport files, and converting value labels into factors)
    #tidyverse (includes ggplot, psych, and import/export capability for csv, SAS, and SPSS files)
    #haven (read spss files as data frames [imported as tibbles])
    install.packages("foreign")
    install.packages("Hmisc")
    install.packages("tidyverse")
    install.packages("haven")
    library("foreign")
    library("Hmisc")
    library("tidyverse")

#---------------
#ANALYTIC PROCEDURE PACKAGES
#---------------
    
#nlme (linear and nonlinear mixed effects modeling)
#lme4 (linear mixed effects models)
#psych (includes many common procedures in psychological statistics)
#sem (structural equations modeling with latent and manifest variables)
#lavaan (SEM and growth curves. can also process Mplus input programs with mplus2lavaan)
#MASS (multivariate simulations)
#mice and miceadds (conduct multiple imputation across various test types)
install.packages("nlme")
install.packages("lme4")
install.packages("psych")
install.packages("sem")
install.packages("lavaan")
install.packages("MASS")
install.packages("mice")
install.pacakges("miceadds")
library("nlme")
library("lme4")
library("psych")
library("sem")

#------------
#DATA MANAGEMENT/MANIPULATION PACKAGES
#------------

#reshape (rename and reorder variables, reformat data sets from L-to-W/W-to-L)
#simstudy (simulate new data, incl mlm and longit, corr variables)
#DT (format interactive data tables in markdown files)
install.packages("reshape")
install.packages("simstudy")
install.packages("DT")
library("reshape")
library("simstudy")
library(DT)

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
library("stargazer")
library("ascii")
library("ggplot2")
library("apaTables")
library(kableExtra)
library(extrafont)
# extra steps for extrafont.

# run the loadfonts() function to import all your 
# system fonts. Depending on how many fonts you 
# have on your machine, this can take several minutes
# to process. My first time, I had about 400 fonts, and
# the procedure took roughly 3 minutes to finish.
loadfonts(device="pdf")
fonts()
windowsF
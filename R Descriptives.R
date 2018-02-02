#################################
#R descriptive statistics script#
#################################

#use the haven package to load whichever SAS/SPSS/.dat 
#that data set you need to use in R.
library("haven")
ls("package:haven")

#import your data set
setwd("C:/Users/fdclavel/Documents/Dissertation/Data/(Working Data Sets)")
CDS <- read_sav("Couples Diary Study v10.sav")

#create a list of variables so you don't need to view the massive
#full data set.
CDSlist<-summary(CDS)
View(CDSlist)


#trim the data set to just the variables needed.
CDSmod <- (CDS [c("CoupleID", "ID1", "TIME7C", "Weekend",
"bAge_gMc", "pbAge_gMc", "bFemale", "bMale",
"b_RELSAT_gMc", "pb_RELSAT_gMc", "bCRelDurationM_gMc",
"bEMPATHYtot_gMc", "B_NegEmotion_gMc", "pB_NegEmotion_gMc",
"dNEGMOODs_pc", "pdNEGMOODs_pc",
"dNEGMOODp_pc", "dStressTot_pc", "dSUPawareSELF_pc", "pdEmoExprsS_pc",
"dSUPrec_pc", "dSUPprovTOT", "pdSuppSatTOT")])
View(CDSmod)


#mount the psych package to run descriptives.
library("psych")
#list all available functions
ls("package:psych")

##INDIVIDUAL DESCRIPTIVES for K variables
#describe(dataset [c("var1","var2",..."var_k")])
describe(CDSmod)

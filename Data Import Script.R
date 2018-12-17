#########################
#R Data File Import Script
#Latest Version compatiblity: 3.4.0
#########################

#Excel (xls, xlsx) File.
library("readxl")
data1 <-read_excel(file.choose())

#csv File.
data2 <-read.csv(file.choose(),header=TRUE)

#txt (tab delimited) file.
data3 <- read.delim(file.choose(), header=TRUE)

#spss file
library("haven")
data4 <- read_sav(file.choose())

#SAS file
library("haven")
data5 <read_sas(file.choose())
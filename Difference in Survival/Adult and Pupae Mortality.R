library(dplyr)

#This is for comparison of latex vs control adult groups 
#The same test and format is conucted for all comparisons
#Reading in the csv file
Adult<- read.csv("Adult latex vs control mort.csv", row.names = 1)
#creating a matrx
Adult<- as.matrix(Adult)
#Running a Fisher's exact test
fisher.test(Adult)
##########################################################################################################################################################

#This is a comparison between PLGA and control adult groups
Adult<- read.csv("Adult PLGA vs control mort.csv", row.names = 1)
Adult<- as.matrix(Adult)
fisher.test(Adult)

##########################################################################################################################################################

#This is a comparison between latex and PLGA adult groups 
Adult<- read.csv("Adult latex vs PLGA mort.csv", row.names = 1)
Adult<- as.matrix(Adult)
fisher.test(Adult2)

##########################################################################################################################################################

#This is a comparison between latex and control pupae groups 
Pupae<- read.csv("Pupae latex vs control mort.csv",row.names = 1)
Pupae<- as.matrix(Pupae)
fisher.test(Pupae)

##########################################################################################################################################################

#This is a comparison between control and PLGA pupae groups 
Pupa<- read.csv("Pupae PLGA vs control mort.csv", row.names = 1)
Pupa<- as.matrix(Pupa)
fisher.test(Pupa)

#########################################################################################################################################################

#This is a comparison between latex and PLGA pupae groups 
Pupa<- read.csv("Pupae PLGA vs latex mort.csv", row.names = 1)
Pupa<- as.matrix(Pupa)
fisher.test(Pupa)

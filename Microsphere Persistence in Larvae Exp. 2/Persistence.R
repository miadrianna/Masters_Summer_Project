#Packages
library(dplyr)
library(lme4)
library(lmtest)
library(lsmeans)
library(multcomp)

#read in csv file 
Larvae<- read.csv("GLM Larvae.csv", header = TRUE)

#The GLM model is the run 
model1<- glm(Larvae$With_Without~as.factor(Larvae$N_beads)*as.factor(Larvae$N_water)* Larvae$Bead_type, family = "binomial")

#The anova is done to bring up a clear table demonstrating the interactions and then the model is simplified so that only the significant interactions remain 
anova(model1, test = "Chisq")
reducedmodel<- update(model1, .~.-as.factor(Larvae$N_beads):as.factor(Larvae$N_water):Larvae$Bead_type)
anova(model1, reducedmodel, test = "Chisq")
anova(reducedmodel, test="Chisq")
reducedmode2<- update(reducedmodel, .~.-as.factor(Larvae$N_water):Larvae$Bead_type)
anova(reducedmodel, reducedmode2, test = "Chisq")
anova(reducedmode2, test="Chisq")

#The lsmeans function is the used to illustrate the individual interactions present 
#This looks at microsphere treated water against clean water
lsmeans(reducedmode2, pairwise~N_water|N_beads|Bead_type)
#This looks at clean water against microsphere treated water 
lsmeans(reducedmode2, pairwise~N_beads|N_water|Bead_type)




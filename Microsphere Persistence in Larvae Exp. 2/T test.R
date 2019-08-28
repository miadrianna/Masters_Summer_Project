#This is the t-test conducted on days 2 and 3 in microsphere treatment and days 2 and 3 in microsphere treatments for PLGA only as these were the iteractions whiich failed in the GLM model
#Day 3 for the PLGA treatment was where 0 individuals contained microspheres

#This looks at days 1 and 3
Larvae<- read.csv("Glm_Data.csv", header = TRUE)

Beads<- cbind(Larvae$With,Larvae$Without)

Beads <- Beads[,1]/(Beads[,1]+Beads[,2])
x <- Beads[Larvae$N_beads == 1 & Larvae$N_water == 0 & Larvae$Bead_type == "PLGA"] 
y <- Beads[Larvae$N_beads == 3 & Larvae$N_water == 0 & Larvae$Bead_type == "PLGA"] 

t.test(x,y)

#This looks at days 2 and 3 
Larvae<- read.csv("Glm_Data.csv", header = TRUE)

Beads<- cbind(Larvae$With,Larvae$Without)

Beads <- Beads[,1]/(Beads[,1]+Beads[,2])
x <- Beads[Larvae$N_beads == 2 & Larvae$N_water == 0 & Larvae$Bead_type == "PLGA"] 
y <- Beads[Larvae$N_beads == 3 & Larvae$N_water == 0 & Larvae$Bead_type == "PLGA"] 

t.test(x,y)


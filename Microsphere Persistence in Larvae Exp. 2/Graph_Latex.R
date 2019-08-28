#This code is to create the bar char for the latex treatment
data <- read.csv("./Graph_Data.csv")
data$instar <- c(1.5,5.5,9.5,6.5,11.5,10.5)

df <- data.frame(
  "0"=c(12,12,3),
  "1"=c(NA,9,7),
  "2"=c(NA,NA,2)
)
df <- t(df)
rownames(df) <- c(0,1,2)
colnames(df) <- c(2,3,4)

svg("Graph_Latex.svg", width = 10, height = 7)
barplot(df, beside = TRUE, col=c("darkblue","red","green"),xlab = "Instar",ylim = c(0, 16), ylab = "Number of Individuals with Microspheres", main = "Latex Microsphere Persistence in Larvae")
legend( 10, 15, title = "Days in \n clean water", legend = c("0 days", "1 day", "2 days"), fill=c("darkblue","red","green"), box.col = "white")

dev.off()

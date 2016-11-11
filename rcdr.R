# R Comdr
# http://courses.statistics.com/software/RCommander/RC00.htm

library(Rcmdr)
Commander()
rainfall <- read.csv("E:/rWork/Projects/amity/rainfall.csv")
summary(rainfall)
numSummary(rainfall[,"rain"], statistics=c("sd"))
numSummary(rainfall[,"rain"],statistics=c("mean","sd","IQR"))
mode(rainfall$rain)
.Table <- table(rainfall$rfactor)
.Table  # counts for rfactor
100*.Table/sum(.Table)  # percentages for rfactor
remove(.Table)
summary(rainfall)
stem(rainfall$rain, unit=1, trim.outliers=FALSE, depths=FALSE)
stem(rainfall$rain)


stem.leaf(rain$rainfall, unit=1, m=2, trim.outliers=FALSE, depths=FALSE)
save(rainfall, file = "raindata") 

# Classification
library(party)
#carFrame = read.csv(“car.csv”)
#carFrame = read.csv(file.choose())
str(carFrame)
Fmla = clm ~ veh_value + veh_body + veh_age + gender + area + agecat
TreeModel = ctree(Fmla, data = carFrame)
plot(TreeModel)

clseg
clseg <- read.csv("E:/rWork/Projects/amity/cls2.csv")
str(clseg)
#clseg$Buys_PC = factor(clseg$Buys_PC)
clseg$Student = factor(clseg$Student)

Fmla2 = Buys_PC ~ Age + Income + Student + Credit_Rating
TreeModel2 = ctree(Fmla2, data=clseg)
plot(TreeModel2,"Simple")


# student Data - Regression
student = c(2,6,8,8,12,16,20,20,22,26)
sales = c(58,105,88,118,117,137,157,169,149,202)
plot(student,sales)
fit = lm(sales ~ student)
summary(fit)
library(car)
durbin.watson(fit)
durbinWatsonTest(fit)
library(bstats)
dw.test

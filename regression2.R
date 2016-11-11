# Regression

data = read.csv(file.choose(),stringsAsFactors=FALSE)
str(data)
data
plot(data$Assmt,data$Attnd)
plot(data$Attnd,data$Assmt)
cor(data$Attnd,data$Assmt)
lm(data$Attnd,data$Assmt)
lm(data$Attnd ~ data$Assmt)
fit = lm(data$Attnd ~ data$Assmt)
summary(fit)
fitted(fit)
residuals(fit)
abline(fit)
#data$Attnd <- as.numeric(as.character(data$Attnd))
#data$Assmt <- as.numeric(as.character(data$Assmt)                      
data
str(data)
data$Attnd

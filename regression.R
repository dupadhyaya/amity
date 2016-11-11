# Regression
your.data=read.csv(file.choose())
your.data
attach(your.data)
pairs(your.data)  # look at the data as a pairs graph 
your.lm = lm(Yield.yi ~ Temp.xi)
plot(Yield.yi ~ Temp.xi)
plot(your.lm)
your.lm
summary(your.lm)
your.lm$coeff["Temp.xi"]
beta.x1 = your.lm$coeff["Temp.xi"]/sd(Yield.yi)
cat(beta.x1)
R2.x1 = beta.x1 * cor(Yield.yi , Temp.xi)
cat(R2.x1)
plot(Temp.xi, Yield.yi, xlab="Temperature", ylab="Yield")
abline(lm(Yield.yi ~ Temp.xi))


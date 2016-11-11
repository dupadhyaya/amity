# Regression 2
# http://stats.stackexchange.com/questions/34076/finding-the-fitted-and-predicted-values-for-a-statistical-model
df=data.frame(income=c(5,3,47,8,6,5),
              won=c(0,0,1,1,1,0),
              age=c(18,18,23,50,19,39),
              home=c(0,0,1,0,0,1))
df
# run a linear model to predict on income:
  
md1 = lm(income ~ age + home + won, data=df)
summary(md1)
fitted(md1)
predict(md1,type="response")
residuals(md1)
data.frame(Age = df$age, Won = df$won, Fitted = fitted(md1))
data.frame(Age = df$age, Income = df$income, Fitted = fitted(md1))

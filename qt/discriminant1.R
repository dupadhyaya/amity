#Discriminant Analysis in R
#http://rstudio-pubs-static.s3.amazonaws.com/35817_2552e05f1d4e4db8ba87b334101a43da.html

library(car)
# install.packages('rattle')
data(wine, package='rattle')
attach(wine)
head(wine)
scatterplotMatrix(wine[2:6])
#linear combinations of the original variables

# MASS ----------------------
library(MASS)
str(wine)
wine.lda <- lda(Type ~ ., data=wine)
wine.lda
#This means that the first discriminant function is a linear combination of the variables: −0.403∗Alcohol+0.165∗Malic⋯−0.003∗Proline


# A Stacked Histogram of the LDA Values -----------------------------------

wine.lda.values <- predict(wine.lda)
ldahist(data = wine.lda.values$x[,1], g=Type)
#stacked histogram of the first discriminant function’s values for wine samples of the three different wine cultivars
ldahist(data = wine.lda.values$x[,2], g=Type)


# Scatterplots of the Discriminant Functions ------------------------------

plot(wine.lda.values$x[,1],wine.lda.values$x[,2]) # make a scatterplot
text(wine.lda.values$x[,1],wine.lda.values$x[,2],Type,cex=0.7,pos=4,col="red") # add labels


# MBA Data ----------------------------------------------------------------

url <- 'http://www.biz.uiowa.edu/faculty/jledolter/DataMining/admission.csv'

admit <- read.csv(url)

head(admit)
adm=data.frame(admit)

plot(adm$GPA,adm$GMAT,col=adm$De)
## linear discriminant analysis
unique(adm$De)
m1=lda(De~.,adm)
m1
predict(m1,newdata=data.frame(GPA=3.21,GMAT=497))
#quadratic discriminant analysis:
m2=qda(De~.,adm)
m2

predict(m2,newdata=data.frame(GPA=3.21,GMAT=497))

# Which model is best? ----------------------

n=85
nt=60
neval=n-nt
rep=100

### LDA
set.seed(123456789)
errlin=dim(rep)
for (k in 1:rep) {
  train=sample(1:n,nt)
  ## linear discriminant analysis
  m1=lda(De~.,adm[train,])
  predict(m1,adm[-train,])$class
  tablin=table(adm$De[-train],predict(m1,adm[-train,])$class)
  errlin[k]=(neval-sum(diag(tablin)))/neval
}
merrlin=mean(errlin)
merrlin

### QDA
set.seed(123456789)
errqda=dim(rep)
for (k in 1:rep) {
  train=sample(1:n,nt)
  ## quadratic discriminant analysis
  m1=qda(De~.,adm[train,])
  predict(m1,adm[-train,])$class
  tablin=table(adm$De[-train],predict(m1,adm[-train,])$class)
  errqda[k]=(neval-sum(diag(tablin)))/neval
}
merrqda=mean(errlin)
merrqda

# Exploratory Graph for LDA or QDA
#install.packages('klaR')
library(klaR)
partimat(De~.,data=adm,method="lda") 

url<-'http://www.correlatesofwar.org/COW2%20Data/WarData_NEW/Inter-StateWarData_v4.0.csv'
data=read.csv(url)
head(data)

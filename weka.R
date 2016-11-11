# r and Weka
#https://cran.r-project.org/web/packages/RWeka/RWeka.pdf
w <- read.arff(system.file("arff","weather.nominal.arff",
                           package = "RWeka"))
library("RWeka")
m <- J48(play~., data = w)
m
## Use 10 fold cross-validation.
e <- evaluate_Weka_classifier(m, cost = matrix(c(0,2,1,0), ncol = 2),
      numFolds = 10, complexity = TRUE,
      seed = 123, class = TRUE)
e
summary(e)
e$details

## S3 method for class 'Weka_classifier'
predict(object, newdata = NULL,
        type = c("class", "probability"), ...)
## S3 method for class 'Weka_clusterer'
predict(object, newdata = NULL,
        type = c("class_ids", "memberships"), ...)
read.arff(file)
read.arff(system.file("arff", "contact-lenses.arff",
                      package = "RWeka"))
Apriori(x, control = NULL)
Tertius(x, control = NULL)

x <- read.arff(system.file("arff", "weather.arff",
                           package = "RWeka"))


x

## Apriori with defaults.
Apriori(x)
## Some options: set required number of rules to 20.
Apriori(x, Weka_control(N = 20))
## Not run:
## Requires Weka package 'Tertius' to be installed.
## Tertius with defaults.
Tertius(x)
## Some options: only classification rules (single item in the RHS).
Tertius(x, Weka_control(S = TRUE))
## End(Not run)



x <- read.arff(system.file("arff", "weather.arff",
package = "RWeka"))
x
str(x)
Apriori(x)
x[x$temperature]
x[x$temperature < 80]
x[x$temperature =< 80]
x[,x$temperature =< 80]
x$outlook[,x$temperature =< 80]
x$outlook
x[x$outlook]
x[x$outlook == "sunny"]
x[x$outlook == "sunny",]
levels[df$temperature]
levels(df$temperature)
unique(df$temperatur)
unique(df$temperature)
unique(x$temperature)
sort(unique(x$temperature))
library(car)
?recode
x$temperature = recode(x$temperature = "lo:70='Cool'; 71:80='Warm'; else='High'")
x$temperature = recode(x$temperature, "lo:70='Cool'; 71:80='Warm'; else='High'")
x
x$humidity = recode(x$humidity, "lo:70='Mild'; else='High'")
x
str(x)
x$temperature = factor(x$temperature)
x$humidity = factor(x$humidity)
str(x)
Apriori(x)
Apriori(x, Weka_control(N = 20))

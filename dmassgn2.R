# Assignment
.libPaths("E:/rWork/rLibrary")
library("arules");
library("arulesViz");
Subject3 <- read.csv(file.choose())
View(Subject3)
Subject3
str(Subject3)
# Change marks to categories 0-59 - Fail (F), 60 & above - P for all columns
library(car)
Subject3
sub3 = data.table(Subject3)

for (i in 1:6) Subject3[[i]] = recode(Subject3[[i]], "lo:59='F'; 60:hi='P'")
Subject3
#for (i in 1:6) {Subject3[[i]] = factor(Subject2[[i]]) }
#str(Subject3)
rules = apriori(Subject3)
inspect(rules)

rules.sorted <- sort(rules, by="lift")
subrules = rules[quality(rules)$confidence > 0.8];
inspect(head(sort(rules, by="lift"),3));

# Method3 : Setting Support & Confidence
rules2 = apriori(Subject3, parameter=list(support=0.2, confidence=0.8));
rules2
# Top3
inspect(head(sort(rules, by="lift"),15));

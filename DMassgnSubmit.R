# Final Assgn on DM
#Assignment
.libPaths("E:/rWork/rLibrary")
library("arules");
library("arulesViz");
#Subject5 <- read.csv(file.choose())
s3<- read.csv( "Subject3.csv", as.is=T, stringsAsFactors=F  )
s3
str(s3)
head(s3)
library(car)
for (i in 1:6) s3[[i]] = recode(s3[[i]], "lo:.59=0; .60:hi=1")
s3
# Now data is has 0 or 1 value, it has to be converted to factors
for (i in 1:6) {s3[[i]] = factor(s3[[i]]) }
str(s3)
write.csv(s3,"s3.csv",row.names=FALSE)


# DM Algo can be applied - AR
library("arules");
library("arulesViz");
rules3 = apriori(s3)
inspect(rules3)


rules3.sorted <- sort(rules3, by="lift")
inspect(head(sort(rules3.sorted,by="lift"),5))
subrules3 = rules3[quality(rules3)$confidence > 0.8];
inspect(head(sort(rules3, by="lift"),3));

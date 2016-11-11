# Final Assgn on DM
#Assignment
.libPaths("E:/rWork/rLibrary")
library("arules");
library("arulesViz");
Subject5 <- read.csv(file.choose())
s3<- read.csv( "Subject3.csv", as.is=T, stringsAsFactors=F  )
s3

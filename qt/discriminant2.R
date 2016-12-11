#https://www.cs.tcd.ie/~houldinb/Index/MVA_files/Lab7-R.pdf
#https://www.cs.tcd.ie/~houldinb/Index/MVA.html

library(readr)
salmon <- read.table("qt/salmon.txt", header=TRUE, sep="\t", quote="")
str(salmon)

plot(salmon[,-1],col=as.factor(salmon[,1]))

# Book Kavita
#example1
e1 = c(200,208,190,210,320,120,180)
mad(e1)  # mean devaition
range(e1)
range1 = max(e1) - min(e1)
range1
cvrange = (max(e1-min(e1))/(max(e1)+min(e1)))
cvrange

#example2
faithful
duration = faithful$eruptions
duration
range(duration)
breaks = seq(1.5,5.5,by=0.5) # half integer seq
breaks
durations.cut = cut(duration,breaks,right=FALSE)
duration.freq = table(durations.cut)
duration.freq
cbind(duration.freq)

# Example 3
e3 = c(200,210,208,160,220,250,300)
e3
quantile(e3)
quantile(e3,c(.32,.57,.98))
quantile(e3,c(.25,.75))
IQR(e3)

# example 4
e4x = c(10,11,12,13,14)
e4f = c(3,12,18,12,3)
e4 = data.frame(e4x,e4f)
e4
cummax(e4f)
e4a = c(10,10,10,11,11,11,11,11,11,11,11,11,11,11,11,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,13,13,13,13,13,13,13,13,13,13,13,13,14,14,14)
table(e4a)
quantile(e4a,c(.25,.75))
IQR(e4a)
Q1 = quantile(e4a,c(.25))
Q3 = quantile(e4a,c(.75))
Q1;Q3
SemiIQR = (Q3-Q1)/2
SemiIQR
CoefQD = (Q3-Q1)/(Q3+Q1)
CoefQD

#Example 8
e8 = c(100,150,80,90,160,200,140)
fivenum(e8)
summary(e8)
mean(e8)
median(e8)
mad(e8)

# example 9
e9 = rep(c(100,150,80,200,250,180),c(24,26,16,20,6,30))
e9
e9t= table(e9)
e9t
median(e9)
mad(e9)
aad(e9)
library(lsr)
aad(e9)
library(multilevel)
#ad.m(e9,grpid,type='mean')

#Example 10
e10 = rep(c(125,175,225,275,275,325),c(3,8,21,20,6,2))
e10
median(e10)
sd(e10)
summary(e10)

# example of SD and Coefficient of Variation
heights <- c(151, 160, 162, 155, 154, 168, 153, 158, 157, 150, 167)
weights <- c(61, 69, 73, 65, 64, 78, 63, 68, 67, 60, 77)

library(raster)
cv(heights)
cv(weights)
sd(heights)
sd(weights)

# example 22 
e22x = rep(c(5,15,25,35,45,55,65),c(5,12,30,45,50,37,21))
e22x
sd(e22x)
cv(e22x)

# Example 23 ; Share values
e23x = c(55,54,52,53,56,58,52,50,51,49)
e23y = c(109,107,105,105,106,107,104,103,104,101)
mean(e23x)
mean(e23y)
sd(e23x); sd(e23y)
summary(e23x); summary(e23y)
cv(e23x); cv(e23y)
# less variation in shares Y
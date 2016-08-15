#Correlation
x=c(43,21,25,42,57,59)
y=c(99,65,79,75,87,81)
cor(x, y, method = "pearson")

#class eg
x1=c(20,50,10,25)
y1=c(30,100,110,100)
cor(x1,y1)
cor(x1, y1, method = "spearman")

#class eg
x2=c(20,30,30,30,44,60,78)
y2=c(100,110,140,140,170,160,180)
cor(x2, y2, method = "spearman")

# Eg
x4= c(43,21,25,42,57,59)
y4 = c(99,65,79,75,87,81)
cor(x4,y4)
cor(x4,y4,method='pearson')
cor.test(x4,y4)
plot(x4,y4)
plot(x4,y4,xlab='Age',ylab='Glucose Level', title='Title', pch=16)
abline(lm(y4 ~ x4),col='red',lw=3)
title(main='Correlation between Age and Glucose Level')

# Rank Correlation
English	= c(56,75,45,71,61,64,58,80,76,61)
Maths =	c(66,70,40,60,65,56,59,77,67,63)
English
Maths
cor(x4,y4,method='spearman')
plot(English,Maths)

# Example - River Width and Depth
#https://www.rgs.org/NR/rdonlyres/4844E3AB-B36D-4B14-8A20-3A3C28FAC087/0/OASpearmansRankExcelGuidePDF.pdf
# proving or disproving a hypothesis e.g. the depth of a river does not progressively increase the further from the river bank.
width	= c(0,50,150,200,250,300,350,400,450,550)
depth=c(0,10,28,42,59,51,73,85,104,96)
plot(width,depth)
cor(width,depth,method='spearman')
# To see if this r value is significant
cor.test(width,depth,method='pearson')
# value of r << 0.01 ; Thus we can reject the hypothesis and conclude that in this case 
# the depth of a river does progressively increase the further the distance from the river bank.

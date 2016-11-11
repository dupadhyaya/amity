# Stem and Leaf
#http://www.r-tutor.com/elementary-statistics/quantitative-data/stem-and-leaf-plot

duration = faithful$eruptions 
faithful$eruptions
stem(duration) 

#https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/stem.html
islands
str(islands)
dim(islands)
stem(islands)

stem(log10(islands))

#
data = c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
data
stem(data)
data2 = c(5, 7, 7, 27, 60, 63, 62, 65, 85, 80, 83, 87, 88)
stem(data2)

stem(data,scale=1)
stem(data,scale=2)
stem(data,scale=4)

#
S=c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90 ,5 ,17 ,97) 
stem(S,scale = 2)

#
watershed = c(0.3, 0.3, 0.4, 0.5, 0.5, 1.3, 1.6, 1.8, 2.6, 2.6,
              + 2.6, 4.7, 9.1, 9.1, 12.9, 19.4, 33.7, 176.1)
stem(watershed)
stem(watershed, scale=2)
stem(watershed, scale=4)
hist(watershed)

library(aplpack)
duration = faithful$eruptions 
apply(faithful,2,stem) # apply to all variables
attach(faithful)
stem.leaf(duration) #Stem leaf plot
stem.leaf.backback(eruptions,waiting) #Back to back stem and leaf plot.
stem.leaf.backback(eruptions,waiting,back.to.back=FALSE) # Two parallel stem and leaf plots
stem.leaf(duration, style="bare", depths=FALSE) # Different style, does not show depths; different style (default "Tukey")
stem.leaf(duration, rule.line="Velleman") #Number of lines =2*sqrt(n) instead of default "Dixon" = 10*log10(n) or "Sturges" = 1 + log2(n)
stem1<-stem.leaf(duration) #invisibly returns a list of elements, including lower , and upper(list of observation on the low and high stem).


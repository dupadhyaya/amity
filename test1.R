x1=c(118,113,128,124,136,130,140,130,140,128)
x2=c(127,121,136,131,138,132,141,131,132,120)
t.test(x1,x2,alternative=c("two"),paired=T,p.value=0.05)
qt(1-.05/2, 9)


x = c(15,20,18,16,17, 21, 20, 19, 17, 15)
t.value = (mean(x) - 18)/(sd(x)/sqrt(length(x)))
p.value = 1 * pt(t.value,df=length(x)-1,lower=F)
t.value
p.value
t.test(x,y=NULL,alternative=c("two"),mu=18,paired=F,conf.level=0.95)
t.test(x,y=NULL,alternative=c("two"),mu=18,paired=F,p.value=0.05/2)

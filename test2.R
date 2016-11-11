p=.8
q=1-p
P=.8
p=.73
n=100

sdval = sqrt(P * (1-P)/n) ;
zval = (p-P)/sdval ;
zval = (p-P)/sdval ;
pval = 2*pnorm(zval) ;
pval ;
library(lmtest)
dwtest(fit)

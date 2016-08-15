#http://www.statmethods.net/stats/ttest.html
#The t.test( ) function produces a variety of t-tests. 
#Unlike most statistical packages, the default assumes unequal variance and applies the Welsh df modification.
# independent 2-group t-test
#t.test(y~x) # where y is numeric and x is a binary factor
# independent 2-group t-test
#t.test(y1,y2) # where y1 and y2 are numeric
# paired t-test
#t.test(y1,y2,paired=TRUE) # where y1 & y2 are numeric
# one sample t-test
#t.test(y,mu=3) # Ho: mu=3

require(graphics)
t.test(1:10, y = c(7:20))      # P = .00001855
t.test(1:10, y = c(7:20, 200)) # P = .1245    -- NOT significant anymore

## Classical example: Student's sleep data
plot(extra ~ group, data = sleep)
## Traditional interface
with(sleep, t.test(extra[group == 1], extra[group == 2]))
## Formula interface
t.test(extra ~ group, data = sleep)

# Eg3
x = c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
mean(x)
t.test(x, alternative="greater", mu=0.3)
# From the output we see that the p-value = 0.029. Hence, there is moderately strong
# evidence that the mean xxxxx level in the ice cream is above 0.3 MPN/g

#------------------ Two-sample t-tests
#  perform a two-sample t-test for comparing the means of the treatment and control groups
Control = c(91, 87, 99, 77, 88, 91)
Treat = c(101, 110, 103, 93, 99, 104)
t.test(Control,Treat,alternative="less", var.equal=TRUE)
t.test(Control,Treat,alternative="less")
# Here the pooled t-test and the Welsh t-test give roughly the same results (p-value =
#0.00313 and 0.00339, respectively)
# ? not clear
# - Paired T Test
reg = c(16, 20, 21, 22, 23, 22, 27, 25, 27, 28) 
prem = c(19, 22, 24, 24, 25, 25, 26, 26, 28, 32) 
t.test(prem,reg,alternative="greater", paired=TRUE) 
mean(reg)
mean(prem)
# Eg 6
Brinell = c( 170,167, 184,179,179,156,163,156,187,156, 183,179,174,179, 170, 156,187,179, 183, 174,187, 167,159, 170,179)
Brinell
t.test(Brinell, alternative="greater", mu=170)
sd(Brinell)
# ---------------
sample2 = c( 7.65,	7.6,	7.65,	7.7,	7.55,	7.55,	7.4,	7.4,	7.5,	7.5)
t.test(sample2, alternative="less", mu=7.5)
t.test(sample2, alternative="greater", mu=7.5)
t.test(sample2, alternative="two.sided", mu=7.5)
# Reject Ho
t.test(sample2, alternative="two.sided",conf.level = 0.01)

setwd("D:\\SLIIT\\Y2\\S2\\2year - 2nd sem IT\\PAS\\7")
getwd()

#Q1

#1.1
X~Bin(44,0.92)
X

#1.2
dbinom(40,44,0.92)


#1.3
pbinom(35,44,0.92)

#1.4
1-pbinom(37,44,0.92)

#1.5
pbinom(42,44,0.92)-pbinom(39,44,0.92)


#Q2

#2.1
dpois(6,4.5)

#2.2
1-dpois(6,4.5)

ppois(6,4.5,lower.tail = FALSE)


#Q3

#3.1
pexp(3,rate=1/2)

#3.2
pexp(4, rate = 1/2, lower.tail = FALSE)

#3.3
pexp(4,rate=1/2)-pexp(2,rate=1/2)


#Q4
#4.1
?pnorm
1-pnorm(37.9,36.8,0.4)


#4.2
pnorm(36.9,36.8,0.4)-pnorm(36.4,36.8,0.4)

#4.3
qnorm(0.012,36.8,0.4)

#4.4
qnorm(0.99,36.8,0.4)

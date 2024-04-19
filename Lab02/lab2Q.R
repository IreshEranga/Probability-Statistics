getwd()


#Q1
# Compute the real roots of the quadratic equation in the form of 𝑎𝑥2 + 𝑏𝑥 + 𝑐 = 0.

quadroots<-function(a,b,c){
  x1=(-b+sqrt(b^2-4*a*c))/2*a
  x2=(-b-sqrt(b^2-4*a*c))/2*a
  print(x1)
  print(x2)
}

#real roots for quadratic eqation 2x^2 +3x + 1 = 0.
quadroots(2,3,1)


#Q2
x<-c(1,2,3)
y<-x[1]/x[2]^3-1+2*x[3]-x[2-1]
y


#Q3
# Generate a sequence of x values
x_values <- seq(1, 10, by = 0.1)

# Calculate log(x) and exp(x) for the given x values
log_x <- log(x_values)
exp_x <- exp(x_values)

# Create a new plot for log(x)
plot(x_values, log_x, type = "l", col = "blue", xlab = "x", ylab = "log(x)", main = "Plot of log(x)")

# Create a new plot for exp(x)
plot(x_values, exp_x, type = "l", col = "red", xlab = "x", ylab = "exp(x)", main = "Plot of exp(x)")


#Q4
#Consider the vector 1:K, where K is a positive integer. Write an R command that determines 
#how many elements in the vector are exactly divisible by 3.  
vec1<-c(1:20)
sum(vec1%%3==0)



#Q6
data3<-c(24,67,12,45,80,50)
max<-0
maxIndex<-0
for (i in 1:length(data3)) {
  if(max<data3[i]){
    max<-data3[i]
    maxIndex<-i
  }
}
print(max)
print(maxIndex)


#Q7
which.max(data3)
which.min(data3)


#Q8
P<-5000
R<-11.5
n<-15
A<-0

money<-function(P,R,n){
  for (i in 1:n) {
    A=P*((1+(R/100))^i)
    print(A)
  }
}

money(5000,11.5,15)

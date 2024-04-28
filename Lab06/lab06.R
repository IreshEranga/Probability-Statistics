setwd("D:\\SLIIT\\Y2\\S2\\2year - 2nd sem IT\\PAS\\6")
getwd()
#Q1
data1<-read.table("Forest.txt",header = TRUE,sep = ",")
data1
fix(data1)
attach(data1)


#Q2
  #get summary of data set
str(data1)

#Q3
  #517

#Q4
max(data1$wind)
min(data1$wind)
max(wind)
min(wind)


#Q5
summary(temp)


#Q6
boxplot(wind, main="boxplot for wind", ylab="Freq", horizontal = TRUE, outline = TRUE, pch=16)
#3 outliers

#Q7 - negative skewed

#Q8
median(temp)

#Q9
mean(wind)
sd(wind)

#Q10
IQR(wind)

#Q11
freq<-table(day,month)
freq
      #21

#Q12
avgtemp<-mean(temp[month=="sep"])
avgtemp


#Q13
count<-table(day[month=="jul"])
count
names(count[count==max(count)])



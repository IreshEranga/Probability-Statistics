setwd("D:\\SLIIT\\Y2\\S2\\2year - 2nd sem IT\\PAS\\4")
getwd()

data<-read.table("DATA 4.txt", header = TRUE)
data

#rename columns
names(data)<-c("Team", "Team Attendance","Team Salary","Years")
data

attach(data)


#boxplot

boxplot(`Team Attendance`,main="Box plot for Attendance", ylab="Attendance", horizontal = TRUE)
boxplot(`Team Salary`,main="Box plot for Salary", ylab="Salary")
boxplot(Years,main="Box plot for years", ylab="years")

#histogram
hist(`Team Attendance`, main="Histogram for Attendance", ylab = "frequency")
hist(`Team Salary`, main="Histogram for salry", ylab = "salary")
hist(Years, main="Histogram for years", ylab = "frequency")
abline(h=0)


#steam leaf plot
stem(`Team Attendance`)
stem(`Team Salary`)
stem(Years)


#mean
mean(`Team Attendance`)
mean(`Team Salary`)
mean(Years)

#median
median(`Team Attendance`)
median(`Team Salary`)
median(Years)


#standard deviation
sd(`Team Attendance`)
sd(`Team Salary`)
sd(Years)


#quartiles

#getall data
summary(`Team Attendance`)

#first Quartile
quantile(`Team Attendance`)

quantile(`Team Attendance`)[2]
quantile(`Team Salary`)[2]
quantile(Years)[2]

#third Q
quantile(`Team Attendance`)[4]
quantile(`Team Salary`)[4]
quantile(Years)[4]


#Interquartile Range.  
IQR(`Team Attendance`)
IQR(`Team Salary`)
IQR(Years)


#function for find mode
get.modes<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.modes(Years)


#function for find outliers
get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  minOutlier<-q1-1.5*iqr
  maxOutlier<-q3+1.5*iqr
  print(paste("Upper Bound",maxOutlier))
  print(paste("Lower Bound",minOutlier))
  print(paste("Outliers",paste(sort(z[z<minOutlier|z>maxOutlier]),collapse = ",")))
}

get.outliers(Years)

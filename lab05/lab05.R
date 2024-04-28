setwd("D:\\SLIIT\\Y2\\S2\\2year - 2nd sem IT\\PAS\\5")
getwd()
data1<-read.table("Data.txt",header = TRUE, sep = ",")
data1
fix(data1)

#rename columns
names(data1)<-c("company","numberOfshareholders")
data1
attach(data1)

#Q1
hist(numberOfshareholders,main="Histogram for share holders",ylab = "freq")
abline(h=0)


#Q2
histogram2<-hist(numberOfshareholders,main = "Histogram for shareholders limit", ylab = "Frequency",breaks = seq(130,270,length=8))

#Q4
#frequency distribution
    #1.identify the breakpoints
histogram2$breaks
breakpoints<-round(histogram2$breaks)
breakpoints

    #2.identify freq of each class
freq<-histogram2$counts
freq

    #3.identify mid point of each class
midpoint<-histogram2$mids
midpoint

#create fre table

classes<-c()
for (i in 1:length(breakpoints)-1) {
  classes[i]<-paste0("[",breakpoints[i],",",breakpoints[i+1],"]")
}
cbind(classes=classes,frequency=freq)


#Q3
#4) Portray the distribution in the form of a frequency polygon.
 lines(histogram2$mids, freq)  #in same plot
 #draw in new plot
 plot(midpoint,freq,type = "l",main = "Frequency polygon for number of share holders", xlab = "Share holder", ylab = "Frequence")
 plot(midpoint,freq,type = "o",main = "Frequency polygon for number of share holders", xlab = "Share holder", ylab = "Frequence")
 plot(midpoint,freq,type = "p",main = "Frequency polygon for number of share holders", xlab = "Share holder", ylab = "Frequence")

 #Q4
 #5) Portray the distribution in a less-than cumulative frequency polygon. 
 q<-cumsum(freq)
q 

new<-c()
for (i in 1:length(breakpoints)) {
  if(i==1){
    new[i]=0
  }else{
    new[1]=freq[i-1]
  }
}
plot(breakpoints,new,type="o", #xlab = "Number of share holder", ylab = "freq", ylim = c(0,max(q.freq))
     )
cbind(upper=breakpoints,cumFreq=new)

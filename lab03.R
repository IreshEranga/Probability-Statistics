getwd()
setwd("D:\\SLIIT\\Y2\\S2\\2year - 2nd sem IT\\PAS\\3")
getwd()

# import the file
data<-read.csv("DATA 3.csv",header = TRUE)
data

#data into editor mode
fix("data")


#re name the columns
names(data)<-c("Age","Gender","Accomodation")
fix("data")
data



#rename categorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
fix(data)
data


#rename categorical data in accomodation column
data$Accomodation<-factor(data$Accomodation,c(1,2,3),c("Home"," Boarded","Lodging"))
fix(data)

data

attach(data)



#Q2
#2. Analyze the data in a single variable at a time (univariate analysis).  


  #1.create frequency tables
      #for gender
gender.freq<-table(Gender)
accomodation.freq<-table(Accomodation)  
gender.freq
accomodation.freq


  #2.pie chart
pie(gender.freq,"Pie chart for gender")
pie(accomodation.freq,"Pie chart for Accomodation")

  #3.bar charts
barplot(gender.freq,main="Bar chart for Gender",ylab = "Frequency")
abline(h=0)
barplot(accomodation.freq,main = "bar chart for Accomodation",  ylab = "Frequency")
abline(h=0)

  #4.boxplots
boxplot(Age,main="Box plot for Age", ylab="Age", outpch=20)



#Q3
  #1.create two way frequency table
gender_acc.freq<-table(Gender,Accomodation)
gender_acc.freq

  #stack bar chart
barplot(gender_acc.freq,main="Gender & Accomodation",legend=rownames(gender_acc.freq))
abline(h=0)

  #clustered bar charts
barplot(gender_acc.freq,beside=TRUE, main="Gender & Accomodation",legend=rownames(gender_acc.freq))
abline(h=0)

#Q4
    #4. Describe age with gender/accommodation. 
#side by side bloxplot
boxplot(Age~Gender,main="Boxplot for Age by gender", xlab="Gender", ylab="Age")
boxplot(Age~Accomodation, main="boxplot for Age By Accomodation", xlab="Accomodation", ylab="Age" , outpch=10)


#Q5

  #5. Find the mean age for all the combinations of gender and accommodation.  
xtabs(Age~Gender+Accomodation)/gender_acc.freq

emp_name<-c("mohan","sohan","rohit","hitesh","suraj","sanjay","adithi")
emp_id<-c(101,102,103,104,105,106,107)
salary<-c(20000,25000,45000,36000,52000,87000,24000)
age<-c(35,38,25,22,24,45,52)
start_date<-as.Date(c("2022-1-13","2023-4-13","2018-2-25","2019-5-24","2016-5-1","2021-08-12","2020-8-27"))
emp_data<-data.frame(emp_id,start_date,emp_name,age,salary)
emp_data
str(emp_data)
f1<-data.frame(emp_data$emp_name,emp_data$salary)
f1
f2<-data.frame(emp_data$emp_id,emp_data$start_date,emp_data$emp_name)
f2
emp_data[c(1),]
emp_data[-c(1),]
emp_data[1:3,2:4]
emp_data[-c(1),c(2:5)]
emp_data<-rbind(emp_data,list(108,"2022-5-12","ajay",30,25000))
emp_data<-cbind(emp_data,department=c("IT","sales","Rsearch","Marketting","IT","Research & development","finance","Banking"))
emp_data
summary(emp_data)
str(emp_data)
order(emp_data$salary)

dir<-c("east","west","noth","south")
is.factor(dir)
as.factor(dir)
class(dir)
typeof(dir)

dir1<-c("north","east","west","north")
dir1
factor(dir,levels=c("nor","WES","east","south"),labels=c(1,2,3,4))
       
factor(dir1,level=c("EAST","WEST","NORTH","SOuTH"),exclude="NORTH")
gl(4,6,labels=c("ram","shyam","mohit","suhan"))

dir2<-factor(c("east","north","west","north"))
dir2
dir2[1]
dir2[c(1,4)]
dir2[-c(1)]
is.factor(dir2)
is.ordered(dir2)
as.ordered(dir2)

getwd()
setwd("C:/Users/heena/OneDrive/Documents")
getwd()
a<-c(10,50,80,30,5,7,3)
sort(a)
sort(a,decreasing=TRUE)
order(a)
a[order(a)]
a[rank(a)]

diamond<-read.csv("C:\\Users\\heena\\Downloads\\diamonds (1).csv")
diamond
head(diamond)
is.data.frame(diamond)
View(diamond)
nrow(diamond)
ncol(diamond)

diamond
str(diamond)
dim(diamond)  
summary(diamond)
names(diamond)
ncol(diamond)
nrow(diamond)
length(diamond)
head(diamond)

dia<-data.frame(diamond[c(1:3,2,6:8)])
diamond[c(1:10),]
View(dia)
View(diamond)
head(diamond[c(1:20),c("carat","clarity")])
head(diamond)
grep("price",colnames(diamond))
grep("clarity",colnames(diamond))
max(diamond$price)
max(diamond["carat"])
max(diamond$carat)
diamond$new_price<-diamond$carat*diamond$price
View(diamond)
names(diamond)
grep("new_price",colnames(diamond))
min_price<-min(diamond$new_price)
min_price
subset(diamond,price==max(price))
subset(diamond,cut=="Ideal")
View(diamond)
diamond$new_price=NULL
head(diamond)
subset(diamond,depth==min(depth))
subset(diamond,depth==min(depth) & cut=="Ideal")


install.packages("dplyr")
install.packages("magrittr")
install.packages("plotrix")
install.packages("xlsx")

tips_data<-read.csv("C:\\Users\\heena\\Downloads\\tips.csv")
tips_data
head(tips_data)
tail(tips_data)
dim(tips_data)
names(tips_data)
nrow(tips_data)
ncol(tips_data)
View(tips_data)
summary(tips_data)

library("dplyr")
head(select(tips_data,smoker,sex))
head(select(tips_data,-size))
head(select(tips_data,-c(sex,size)))
tail(select(tips_data,total_bill:day))
head(select(tips_data,starts_with("t")))
nrow(select(tips_data,ends_with("r")))
select(tips_data,contains("smoker"))
select(tips_data,matches("^da"))

(filter(tips_data,tip>5))
nrow(filter(tips_data,tip>5))
filter(tips_data,tip>5,smoker=="No")
filter(tips_data,tip>5,smoker=="No" & day=="Sun")
filter(tips_data,day %in% c("Sat","Sun"))
filter(tips_data,time %in% c("Dinner"))
filter(tips_data,smoker %in% c("Yes"),time %in% c("Lunch"))

library("dplyr")
library("magrittr")

iris_data<-read.csv("C:\\Users\\heena\\Downloads\\Iris.csv")
head(iris_data)
length(iris_data)
names(iris_data)
nrow(iris_data)
ncol(iris_data)
dim(iris_data)
summary(iris_data)
head(select(iris_data,Species))
head(filter(iris_data,Species %in% c("Iris-setosa"),SepalWidthCm >3))
head(select(iris_data,c("PetalLengthCm","Species")))
subset(iris_data,Species=="Iris-virginica")
grep("Id",colnames(iris_data))
grep("SepalLengthCm",colnames(iris_data))
grep("Species",colnames(iris_data))
iris_data %>% select(Species,SepalLengthCm) %>% head
iris_data %>% head %>% select(Species,PetalLengthCm)
iris_data %>% select(Id,PetalLengthCm,SepalLengthCm,Species) %>% head
iris_data %>% arrange(PetalLengthCm) %>% head 
iris_data %>% arrange(PetalLengthCm,Species)
iris_data %>% select(Species,PetalLengthCm) %>% arrange("PetalLengthCm")
iris_data %>% select(Id,PetalLengthCm,SepalLengthCm) %>% 
  arrange(PetalLengthCm) %>%
  filter(SepalLengthCm>5)
iris_data %>% select(PetalLengthCm,Species,SepalLengthCm,PetalWidthCm) %>%
  arrange(PetalWidthCm) %>%
  filter(PetalLengthCm <2) %>% head
iris_data %>%
  mutate(price=PetalLengthCm+SepalLengthCm*1000,New_price=SepalLengthCm*10000) %>%
  head
iris_data %>% group_by(Species) %>% nrow
iris_data %>% select(Id,Species,PetalLengthCm) %>%
  arrange(PetalLengthCm) %>%
  filter(Species=="Iris-setosa") %>% str
iris_data %>% select(Id,PetalLengthCm,SepalLengthCm) %>%
  arrange(SepalLengthCm) %>%
  filter(PetalLengthCm ==6)
iris_data %>% select(Id,Species,PetalLengthCm) %>%
  arrange(PetalLengthCm) %>%
  filter(PetalLengthCm <4) %>% 
  mutate(flower_height=PetalLengthCm*5) %>% head
iris_data %>% select(Id,Species,PetalLengthCm) %>%
  arrange(PetalLengthCm) %>%
  filter(Species=="Iris-setosa") %>% summary


library(tidyverse)
name<-c("john","mary","adam","paul","Lisa","Sarah","Jane","abraham","Jocob","Isac")
height<-c("short","tall","medium","tall","short","tall","medium","tall","tall","short")
age<-c(25,45,25,26,48,56,35,42,36,32)
weight<-c(76.2,84.4,62.5,84,94,62,56.5,85.7,90.5,56)
friends<-data.frame(name,height,age,weight)
friends
head(friends)
tail(friends)
names(friends)
nrow(friends)
ncol(friends)
length(friends)
dim(friends)
str(friends)
summary(friends)
is.na(friends)
friends$height<-as.factor(friends$height)
is.numeric(friends$age)
levels(friends$height)
friends$height<-factor(friends$height,levels=c("tall","medium","short"))
head(friends)
friends$sorted_age<-sort(friends$age)                      
friends

library(tidyverse)
friends %>% 
  filter(height =="tall") %>% 
  select(name,age,height) %>% head
friends %>% 
  filter(height %in% c("tall")) %>%
  arrange(age,desc=TRUE) %>% 
  select(name,height,age) %>% head
friends %>% 
  mutate(shape=weight/10) %>% 
  select(name,height,shape)
friends %>% select(everything())
head(friends)
friends %>% group_by(height) %>% 
  filter(age %in% c(25,30,35,45)) %>% 
  select(everything(),-sorted_age) 



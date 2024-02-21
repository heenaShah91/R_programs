abs(-10)
sqrt(25)
ceiling(20.6)
floor(20.6)
ceiling(-10.5)
floor(-10.5)
trunc(4.69)
round(15.8)
round(15.2)
round(15.24587,digits=2)
sin(30)
cos(0)
tan(45)
log(2)
log10(2)
log2(10)
exp(1)


s<-"welcome to r programmimg"
substr(s,1,9)
grep("^w",s)
grep("^o",s)
sub("r","R",s)
strsplit(s,"")
strsplit(s,"o")
tolower(s)
toupper(s)
nchar(s)

vec<-c("java","c","c++","python")
substr(vec,1,3)
grep("^ja",vec)
sub("java","R program",vec)
paste("coding language",vec,sep="--")
strsplit(vec,(" "))
tolower(vec)
toupper(vec)
nchar(vec)

a<-1:20
a<-a[a%%2==0]
a
vec<-c(a)
print(vec)
a[2:5]
a[11]
a[-1]
a[-10]
a[c(-3,-5)]
a
b<-c(seq(9.5,14,0.5))
print(c(a,b))
x<-c(seq(10,50,5))
x
x[2]
x[c(5,8)]
x[2:8]
x[c(1,6,8,7,2,1,2,7)]
x[4]=0
x
x[5]=15
x
x[x>25]
x[5]="NULL"
x<-as.numeric(x)
print(x)
x[1]=100
print(x)
sort(x)
sort(x,decreasing=TRUE)


l<-list()
print(l)
typeof(l)
class(l)

l<-list(10,20,"R",TRUE,10+2i)
print(l)
l[1]
l[2:4]
l[c(1,3,5)]
l[1]<-100
l
l[2]<-NULL
print(l)

l1<-list(list("abc","def","ghi"),10,50,60)
l1
l1[[1]][[1]]
l1[2]
l1[[1]][[3]]

l2<-list(list("abc","def","ghi","jkl","lmn"),
         list(101,102,103,104,105),
         list(98,54,89.5,75,46),
         list("Bcom","Bsc","Btech","BA","Btech"))
names(l2)<-c("stu_name","roll_no","score","course")
print(l2)
l2["roll_no"]
l2$roll_no
l2[["stu_name"]][[1]]
l2[["course"]][[2]]

l3<-list(seq(10,50,3))
l3
l3[[1]][[2]]
length(l3)
length(l2)


m<-matrix()
print(m)
class(m)
data<-(1:20)
data
M1<-matrix(data,nrow=4,ncol=5,byrow=TRUE)
print(M1)
M1[2,5]
M1[c(1,4),]
M1[,c(1,5)]
M1[2:4]
M1[,c(4,5)]
M1[c(1,3),]
M1[1,5]
M1
a<-(20:40)
a<-a[a%%2==0]
a
c<-matrix(a,nrow=2,ncol=5)
c
c<-rbind(c,c(10,20,30,40,50))
c
c<-cbind(c,c(20,25,28))
c
mat<-matrix(seq(1:100),nrow=10,ncol=10)
mat
mat<-rbind(mat,c(11,12,13,14,15,16,17,18,19,20))
mat<-cbind(mat,c(10:20))
mat<-rbind(mat,seq(100,105,.5))
mat

m<-matrix(c(10:20),ncol=5,nrow=2,byrow=TRUE)
m
m[-c(1)]
m[,-c(2)]
m
m[-c(2),-c(3)]
mat
100%in%m
m[m%%10==0]
dim(m)
length(m)
nrow(m)
ncol(m)
dim(m)

for (r in m){
  for (c in r){
    print(c)
  }
}

for (r in 1:nrow(m)){
  for (c in 1:ncol(m)){
    print(m[r,c])
  }
}

a<-array(c(1:20))
a
a<-1:200
a1<-a[a%%2==0 & a%%3==0]
length(a1)
arr<-array(a1,dim=c(5,6,2))
arr
dim(arr)
length(arr)
arr[1]
arr[1,,2]
arr[c(1),,2]
arr[,c(4),2]
arr[c(2),c(4),1]

a<-array(seq(10,60,10),dim=c(3,2,1))
a
apply(a,c(1),sum)
apply(a,c(2),sum)
b<-array(1:6,dim=c(3,2,1))
b
a+b
a-b
a*b
a/b
a%%b
a %in% b
2 %in% b
dim(a)
length(a)
for (i in a){
  print(i)
}

df<-data.frame(roll_no=c(101,102,103,104,105),
               stu_name=c("heena","firdous","Moin","zubeda","Tajuddin"),
               percent=c(99.4,89,52,75,65))
df
df[1]
df[1:3]
df[c(1,3)]
df["stu_name"]
df$percent
df[["stu_name"]][[1]]
df$stu_name[c(2,1,5)]
summary(df)
df<-rbind(df,c(106,"imam",58))
df
df<-cbind(df,weight=c(45,52,84,56,45,36))
df
df[,-c(1)]
df
df[-c(1,3),-c(4,1)]
df[-c(1),]
dim(df)
length(df)
nrow(df)
ncol(df)

df1<-data.frame(name=c("a","b","c","d","e","f","g","h","i"),
                age=c(25,24,35,45,65,24,36,45,26),
                ph=c(123,456,789,159,951,753,357,852,852))
df1
names(df1)
dim(df1)
df1<-rbind(df1,c("m",56,963))
df1
df1<-cbind(df1,salary=c(2000,500,600,800,777,222,666,222,666,000))
df1
df1<-df1$salary[2]=0
df1

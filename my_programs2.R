c1<-c(8,9,6)
c2<-c(2,4,5)
c1+c2
c1-c2
c1*c2
c1/c2
c1%%c2
c1^c2
a<-c(2,3,2)
c1%/%a
c1%/%c2

a<-7.5
b<-2
a<b
a>=b
a==b
c1!=c2
a!=b
c1==c2

d<-c(3.5,TRUE,2+5i)
e<-c(2.4,TRUE,6+2i)
d&e
a&&b
a||b
d!=e
print(!d)

x<-25L
if (is.integer(x)){
  print("x is an integer")
}else{
  print("x is not an integer")
}

y<-c("hardwork","is","the","key","to","success")
if ("key"%in%y){
  print("key is found in a vector y")
}else{
  print("key is not found")
}

marks<-as.numeric(readline("enter a numeric number"))
if (marks>75){
  print("first division")
}else if (marks>60){
  print("second division")
}else if(marks>=35){
  print("third division")
}else{
  print("fail")
}


mark<-c(75,80,92,52,40,63,12.35,48,75,72)
for (i in mark){
  if (i>75){
    print("FIRST DIVISION")
  }else if (i>60){
    print("SECOND DIVISION")
  }else if (i>=36){
    print("THIRD DIVISION")
  }else{
    print("FAIL")
  }
}


print(switch(2,"ram","shyam","Mohan","sumit","deepti"))

y<-"4"
x<-switch(y,"4"="RAM","8"="shyam","12"="mohan","16"="sumit","20"="deepti","24"="divya")
print(x)

x1<-as.character(readline("enter a character"))
x<-switch(x1,"a"="amit","b"="bharath","c"="cinthiya","d"="dhawan","e"="esha")
print(x)


x<-1:20
print(x)
for (i in x){
  if (i%%2==0){
    print("even")
  }else{
    print("odd")
  }
}

a<-c(10,4,5,8,6,3,15)
for (i in a){
  if (i%%2==0 & i%%5==0){
    print("complete divisible by both 2 and 5")
    print(i)
  }
} 

x<-10:1
for (i in x){
  print(i)
  if (i==5){
    break
  }
}

for (i in x){
  if(i%%3==0){
    print(i)
    next
  }
}


i<-1
repeat{
  print(i)
  if (i==3)
    break
  i<-i+1
}

a<-1
repeat{
  print("hello")
  if (a==5)
    break
  a<-a+1
}


for (i in 1:10){
  print(paste("number=",i))
}

f<-c("Orange","Apple","Banana","Mango")
for (i in f){
  if (i=="Apple"){
   print(i) 
  }
}


v<-c("hello","hi","how","are","you")
x<-1
repeat{
  print(v)
  x<-x+1
  if (x>5){
    break
  }
}

x<-c("Iam learning R language")
count<-1
repeat{
  print(x)
  count<-count+1
  if (count>7){
    break
  }
}

v<-c("hello","how are you?")
x<-2
while(x<6){
  print(v)
  x<-x+1
}

name<-readline(prompt="enter name: ")
age<-readline(prompt="enter age: ")
print(paste("my name is",name,"and my age is",age))

paste("hello",123,"row")
paste0("hello",123,"row")


display<-function(){
  print(paste("hello","welcome to user defined function"))
}
display()

addition<-function(){
  a<-10
  b<-20
  print(a+b)
}
addition()


add<-function(a,b){
  print(a+b)
}
x<-2
y<-10
add(x,y)

mul<-function(a=11,b=20){
  cat((a*b),(a+b))
}
mul(a=15)
mul(b=2)


func<-function(x,y,z){
  print(x+y+z)
  cat((x*y),(y/z),(x%%z))
}
a<-as.numeric(readline("enter value a: "))
b<-as.numeric(readline("enter value b: "))
c<-as.numeric(readline("enter value c: "))
func(a,b,c)

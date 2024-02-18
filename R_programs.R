a<-10
a/2
a<-a%%2==0
print(a)

b<-c(20,5,28)
b[(b%%2==0) & (b%%7==0)]

x<-switch(2,2,5,6)
print(x)


a<-as.integer(readline("enter no. a "))
b<-as.integer(readline("enter no. b "))
operator<-readline("enter operator :")
x=switch(operator,"+"=a+b,"-"=a-b,"*"=a*b,"invalid oprator")
print(x)

y<-c(10,20,30,50,60,66)
for (i in y){
  print(y)
}

y[y%%3==0]

for (i in y){
  if (i%%3==0){
    print(i)
  }
}

a<-(1:50)
print(a)
for (i in (1:50)){
  if (i%%2==0 & i%%3==0){
    print(i)
  }
}


i<-0
while(i<5)
{
  print(i)
  i=i+1
}


n<-as.integer(readline("enter a number n : "))
print(n)

for (i in seq(1,20,by=0.5)){
  if (i==8){
    break
  }
  print(i)
}


l<-list("a","b","c","d")
for (i in l){
  if (i=="c"){
    break
  }
  print(i)
}


for (i in seq(1,20)){
  if (i==3 | i==15){
    next
  }
  print(i)
}


n<-1:20
print(n)


for (i in n){
  if (i>8){
    break
  }
  print(i)
}


a<-seq(1,100)
print(a)

for (i in a){
  if (i%%2==0 & i%%10==0){
    break
  }
  print(i)
}


b<-1:25
for (i in b){
  if (i%%2==0 & i%%3==0){
    next
  }
  print(i)
}


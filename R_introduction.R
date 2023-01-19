# To output text

"Hello World!"
'Hello World!'

#To output numbers!
5
10
5 10 20 #will raise error

#Variable
name <- 'Ganesh'
name

age <- 25
age

age+5

num<-"30"
num+5

#function
text<- "talented"
paste("Ganesh is",text)

help(paste)

#Assign same value to multiple variables
var1<-var2<-var3<-'Orange'
var3

#VAriable name rules
.myval<-122
.myval
MYVAL<-122
MYVAL

#Illegal name rules
_myval
2myval
my@val

#Data Types in R
#Numeric/Float- Decimal whole +ve or -ve
x<-10.5
class(x)

#Integer
y=1000L
class(y)
z=10.5L
class(z)

#String/Character
x<- "R is exciting"
class(x)

#logical/Boolean
x<- TRUE
class(x)

#Operators
#1. Comparison operators
3>2
2<3
5==5
5!=5

#2.Arithmetic Operators
x<-20
y<-3

x+y
x-y
x*y
x/y  #numeric/float
x^2 #power
x%%y  #modulus
x%/%y #integer value

#constants
pi
??Constants
month.abb
month.name

#Assignment Operator
50 -> c

#Built-in Math function
max(1,50,78)
min(5,12,785)
sqrt(36)
abs(-4.5)


#Data Structures in R
#1. Homogeneous Data STructure
#Vector
#vector of strings
fruits <- c('Banana','Apple','Strawaberry','Orange')
class(fruits)
#vector of numerical
numbers<- c(1,2,3,4)
class(numbers)

#2. Heterogeneous Data Structure
mix<- c('Banana',10.5,100L,'xmas')
class(mix)

#Operations on Data Structure
x<- c(1,2,3,6)
y<- c(1,1,1,1)

x+y
x*y


#Sequence
1:1000
40:45
seq(1,10,by=2)
seq(2,10,2)  #start value, end value, step/increment value
seq(-1,-5)  # Autoincrement value is 1

n1 <- 1.5:6.5
n1

#Repetition
rep(45,3)
rep("Mango",4)

# Random Sample
sample(1:50,5)
sample(1:10,200) # Default replace = FALSE
sample(1:10,15,replace=TRUE)
sample(c("Hindi","English","Marathi"),10,replace=TRUE)

##################################################
#Indexing/Accessing Vector elements
x <-c(2,4,3,5,6)
x[1]
x[-1]
x
x[-4]
x[2]<-3
x
x[-1]<-2
x
 y<-c(1,9,9,9)
y<9 
y[y<9]<-7
y[y>7]<-10
y

#Relational Operators with vectors
marks<-c(60,70,80,50,90)

marks>50

marks[marks>50]

names<-c("Jivan","Prakash","Pani",'pooja')

"Pani" %in% names

"Poonam" %in% names

#Slicing
marks[3:7]

price<-c(45,899,7634,45657,6463,46564,63410)
price[price>1000]

sort(price)
sort(price,decreasing=T)
help(sort)

#Basic Functions on vectors
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)
help(mode)


#Dataframes
#Slicing Data Frames
a<-c(1,2,3,4,5)
b<-c('a','b','c','d','e')
data.frame(a,b)
df<-data.frame(a,b)
df

df1<-data.frame(
  Training=c("Strength","Stamina","Other"),
  Pulse=c(100,150,200),
  Duration=c(60,30,45)
)

#Operations on Dataframe
df1[,2]
df1[2,]
df1[,]

df1$Training

df2<-data.frame(height=c(150,160),weight=c(65,72))

food<-data.frame(
  Name=c("PavBhaji","PaniPuri","Bhel","EggBhurji","Jilebi","ButterChicken"),
  Type=c("Veg","Veg","Veg","Nonveg","Nonveg","Nonveg"),
  Taste=c("Spicy","Spicy","Spicy","Spicy","Sweet","Spicy"),
  Price=c(50,20,20,30,50,150)
)
  
#Rows with food type Veg
food[food$Type=="Veg",]

#Food with nonveg name and price
food[food$Type=="Nonveg",c(1,4)]
#OR
food[food$Type=="Nonveg",c("Name","Price")]

#all spicy food having price less than 60
food[food$Taste=='Spicy' & food$Price<60,]  #AND logic

food[food$Taste=='Spicy' | food$Price<60,]  #OR Logic

#Inbuilt dataframes in R
Orange
mtcars
USArrests

dim(Orange)  # No. of rows and columns
nrow(Orange) # No. of rows
ncol(Orange) #No. of columns
str(Orange)
summary(mtcars)

mtcars$cyl
table(mtcars$cyl)
View(USArrests) #TO view table in another tab

head(USArrests)     #By default it will show first 6 records
tail(USArrests)     #It will show bottom 6 records
head(USArrests,10)  #To show first 10 records

#To check all available datasets in R
data()


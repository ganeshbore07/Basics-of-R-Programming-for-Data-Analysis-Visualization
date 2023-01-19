#Data visualization
age<-c(12,34,45,56,13,35,46,57)

plot(age)

salary<-c(12545,4564,46445,486321,45496,46564,53179,45213)
plot(salary)

plot(age,salary)
plot(salary,age)

help(plot)

#############################################
#To import any file in R
#Varname = read.csv('pathof the file.csv')
#Click on import 

airquality <- datasets::airquality

#Top and bottom records
head(airquality,10)
tail(airquality,10)

names(airquality)  #Shows all columns names

airquality[,c(1,2)]

df<-airquality[,-6]
df
 
summary(airquality[,1]) #Gives summary statistics for column

summary(airquality$Wind)

#Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)  #Scatterplot

plot(airquality$Wind,
     xlab= 'Ozone Concentration',
     ylab= 'No. of instances',
     main= 'Ozone layer in NY city',
     col='blue',
     type='l')

plot(airquality, col='red')

#Horizontal bar plot
barplot(airquality$Ozone,main='Ozone Concentration',
        ylab='No. of instances',
        horiz=T,axes=T,col='blue')

help(barplot)

#Histogram
hist(airquality$Temp,col='blue',
     border='red',
     xlab='Solar rad.',
     main='Solar values radiation in air',
     )

#Single Box plot
boxplot(airquality$Wind,main='Boxplot',
        col='green',
        border='red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out  #To show the outliers in Boxplot

#Multiple Box plot
boxplot(airquality[,1:4],main='Multiple Boxplot',
        col='pink',
        border='blue',
        horizontal=T)

help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o",col='black')
#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

#COnsidering NA values
airquality
max(airquality$Wind)
min(airquality$Wind)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm=T) #To remove NA values & find mean

mean(airquality$Temp,na.rm=T)

#You can learn following parameters by using Google
#variance
#skewness
#kurtosis
#Density plots

var(airquality$Wind)
sd(airquality$Ozone)
sd(airquality$Ozone, na.rm=T)

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone, na.rm=T)
kurtosis(airquality$Ozone, na.rm=T)

#To plot density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone, na.rm=T))

#Practice Dataset
quakes<- datasets::quakes #TRy iris dataset
View(quakes)

mean(quakes$stations)
median(quakes$lat)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o",col='black')
plot(quakes$depth,col='orange')
plot(quakes$lat, quakes$long,col='yellow')
plot(quakes$mag, type= "l",col='green')
plot(quakes$depth, type= "l")
plot(quakes$stations, type= "l")
barplot(quakes$mag, main = 'Magnitude',
        xlab = 'Magnitude', col='green',horiz = TRUE)
hist(quakes$mag)
boxplot(quakes$depth)
boxplot(quakes[,0:4], main='Multiple Box plots')




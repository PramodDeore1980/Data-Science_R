# Homework
e_quakes<-datasets::quakes
#skewness
#kurtosis
#var
#standard deviation

#Export dataframe to local machine
write.csv(airquality,"airquality.csv")


#==========
e_quakes <-datasets::quakes

# Top 10 rows
head(e_quakes,10)

# Top 10 Column
tail(e_quakes,10)


e_quakes[,c(1,2)]
df<-e_quakes[,-6]
summary(e_quakes)
e_quakes[,1]
e_quakes$long
summary(e_quakes$long)

# Plots
plot(e_quakes$long)
plot(e_quakes$long,e_quakes$lat)
plot(e_quakes)

# Type - L - line, P- Point, b - both
plot(e_quakes$stations,type = "l")
plot(e_quakes$stations,type = "p")
plot(e_quakes$stations,type = "b")
plot(e_quakes$stations,ylab ="stations", xlab = "No of instances",col ='blue',type = "l")


####################
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$lat, type= "b") # p: points, l: lines,b: both
plot(e_quakes$lat, ylab = 'Latitude', 
     xlab = 'No of Instances', main = 'Latitude for places',
     col = 'blue')

#Histogram
hist(e_quakes$lat)


###
#Single box plot 
boxplot(e_quakes$lat,main="Lat_Boxplot")
# Multiple box plots
boxplot(e_quakes,main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")


plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$stations)
plot(e_quakes$stations, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$depth, type= "l")

skewness(e_quakes)
kurtosis(e_quakes)
var(e_quakes)
sd(e_quakes$depth,na.rm=F)
sd(e_quakes$lat,na.rm=F)

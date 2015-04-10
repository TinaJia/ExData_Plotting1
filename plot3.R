library(plyr)

##This is where I put the data
setwd("C:/Users/User/Dropbox/Data Science/Jonhs Hopkins Courses/R coding practice _Ying/Explotary data analysis")

Data <- read.table("./household_power_consumption.txt", sep=";", header=T,na = "?")
Data1 <- Data[Data$Date == "2/2/2007" | Data$Date == "1/2/2007",]

Data1 <- mutate(Data1, DateTime = strptime(paste(Data1$Date, Data1$Time), "%d/%m/%Y  %H:%M:%S"))

## where to plot the data
setwd("C:/Users/User/Dropbox/Data Science/Jonhs Hopkins Courses/R coding practice _Ying/Explotary data analysis/ExData_Plotting1")

png(file = "plot3.png",width = 480, height = 480,  units = "px")
x <- Data1$DateTime
y1 <- Data1$Sub_metering_1
y2 <- Data1$Sub_metering_2
y3 <- Data1$Sub_metering_3

plot(x,y1,type = "n", xlab = "", 
     ylab = "Energy sub metering")
lines(x,y1,type = "l", col = "black")
lines(x,y2,type = "l", col = "red")
lines(x,y3,type = "l", col = "blue")
legend("topright",col=c("black","red","blue"), lty=1,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
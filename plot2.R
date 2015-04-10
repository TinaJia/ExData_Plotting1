library(plyr)

##This is where I put the data
setwd("C:/Users/User/Dropbox/Data Science/Jonhs Hopkins Courses/R coding practice _Ying/Explotary data analysis")

Data <- read.table("./household_power_consumption.txt", sep=";", header=T,na = "?")
Data1 <- Data[Data$Date == "2/2/2007" | Data$Date == "1/2/2007",]

Data1 <- mutate(Data1, DateTime = strptime(paste(Data1$Date, Data1$Time), "%d/%m/%Y  %H:%M:%S"))
## where to plot the data
setwd("C:/Users/User/Dropbox/Data Science/Jonhs Hopkins Courses/R coding practice _Ying/Explotary data analysis/ExData_Plotting1")


## construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels
png(file = "plot2.png",width = 480, height = 480,  units = "px")
x <- Data1$DateTime
y <- Data1$Global_active_power
plot(x, y, 
     type = "l",
     xlab = "", 
     ylab = "Global Active Power(killowatts)")
dev.off()






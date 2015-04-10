getwd()


## Please set your own directory to work and download the data
setwd("C:/Users/User/Dropbox/Data Science/Jonhs Hopkins Courses/R coding practice _Ying/Explotary data analysis")

#################################################################################################
## Downnload the data
##  "Individual household electric power consumption Data Set" 
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileDest<- "./Dataset_Project1.zip"
download.file(fileUrl, destfile =fileDest)
datedownloaded <- date()
unzip("./Dataset_Project1.zip")

######################################
## Read the data
## Description: Measurements of electric power consumption in one household with a one-minute sampling rate 
## over a period of almost 4 years. Different electrical quantities and some sub-metering values are available

Data <- read.table("./household_power_consumption.txt", sep=";", header=T,na = "?")
Data1 <- Data[Data$Date == "2/2/2007" | Data$Date == "1/2/2007",]


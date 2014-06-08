# Main Script that call and all plot.R scrips 
# Project 1
# Coursera EDA class

# Code for reading data


fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileZip <-"hpc"
if (!file.exists(fileZip)) download.file(fileUrl, fileZip, method = "auto")

# unzip the dataset into wd - dir 'UCI HAR Dataset'
if(file.exists(fileZip)){unzip(fileZip)}

# read data
hpc  <- read.csv("household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)

str(hpc)

# date conversion

d2 <- as.Date("2007-02-02", "%Y-%m-%d")
d1 <- as.Date("2007-02-01", "%Y-%m-%d")


s <- subset(hpc, as.Date(hpc$Date[1:nrow(hpc)], "%d/%m/%Y") >= d1 & as.Date(hpc$Date[1:nrow(hpc)], "%d/%m/%Y") <= d2)
s1 <- s # temp copy of data frame

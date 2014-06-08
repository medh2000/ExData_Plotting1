
# script for plot1.R

# NOTE:
# Before running this code, main_script.R should be run 
# s contains data frame read by main_script.R


png(file ="plot1.png", width = 480, height = 480)

hist(as.numeric(s$Global_active_power),main ="Global Acitve Power",xlab = "Global Active Power(kilowatts)",col="red")

dev.off()
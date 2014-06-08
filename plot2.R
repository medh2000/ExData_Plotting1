
# Plot2.R 

# NOTE:
# Before running this code, main_script.R should be run 
# s1 contains data frame read by main_script.R

# create png file
png(file ="plot2.png", width = 480, height = 480)

plot(s1$DateTime, as.numeric(s1$Global_active_power), type="l", xlab="Days", ylab="Global Active Power (Kilowatts)")

dev.off()
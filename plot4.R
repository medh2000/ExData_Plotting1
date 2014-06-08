# script for plot4.R

# file for plot4.png
png(file ="plot4.png", width = 480, height = 480)

# To create 4 plots
par(mfrow =c(2,2) )

# plot 1

plot(s1$DateTime, as.numeric(s1$Global_active_power), type="l", xlab="Days", ylab="Global Active Power (Kilowatts)")

#png(file ="plot2.png", width = 480, height = 480)

# plot # 2
plot(s1$DateTime, as.numeric(s1$Voltage), type="l", xlab="datetime", ylab="Voltage")

# plot 3
plot(s1$DateTime, as.numeric(s1$Sub_metering_1), type="n", xlab="Days", ylab="Energy sub metering")

lines(s1$DateTime,as.numeric(s1$Sub_metering_1),lwd=2.5) 

lines(s1$DateTime,as.numeric(s1$Sub_metering_2),col="red",lwd=2.5)  

lines(s1$DateTime,as.numeric(s1$Sub_metering_3),col="blue",lwd=2.5) 


#legend("topright", legend=c("Sub_metering_1", "Sub_metering_1", "Sub_metering_1", pch=20))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("blue","red"), 
       lty=1:3, lwd=2);
# plot 4

plot(s1$DateTime, as.numeric(s1$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")


dev.off()


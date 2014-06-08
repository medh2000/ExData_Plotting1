# script for plot 3 

# NOTE:
# Before running this code, main_script.R should be run 
# s1 contains data frame read by main_script.R


# create png file plot3.png
png(file ="plot3.png", width = 480, height = 480)

plot(s1$DateTime, as.numeric(s1$Sub_metering_1), type="n", xlab="Days", ylab="Energy sub metering")

lines(s1$DateTime,as.numeric(s1$Sub_metering_1),lwd=2.5) 

lines(s1$DateTime,as.numeric(s1$Sub_metering_2),col="red",lwd=2.5)  

lines(s1$DateTime,as.numeric(s1$Sub_metering_3),col="blue",lwd=2.5) 


#legend("topright", legend=c("Sub_metering_1", "Sub_metering_1", "Sub_metering_1", pch=20))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("blue","red"), 
       lty=1:3, lwd=2);

dev.off()
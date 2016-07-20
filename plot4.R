source("initialize.R")
df<-initialize()
png("plot4.png", width=400, height=400)

par(mfrow=c(2,2))
# Plot: 1
plot(df$Time, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
# Plot: 2
plot(df$Time, df$Voltage, type="l",
     xlab="datetime", ylab="Voltage")
# Plot: 3
plot(df$Time, df$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)
# Plot :4
plot(df$Time, df$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(df$Time, df$Global_reactive_power)
dev.off()

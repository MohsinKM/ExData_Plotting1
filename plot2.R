source("initialize.R")
df<-initialize()
png("plot2.png", width=400, height=400)

plot(df$Time, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()

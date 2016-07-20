source("initialize.R")
df<-initialize()
png("plot1.png", width=400, height=400)

hist(df$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
dev.off()

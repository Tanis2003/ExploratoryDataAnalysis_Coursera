# Common code for all plots (put this at start of each plot#.R file)
data <- read.csv("/Users/tanishqshahare/Downloads/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
subset_data <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & 
                        as.Date(DateTime) <= as.Date("2007-02-02"))

# plot3.R
png("plot3.png", width=480, height=480)
plot(subset_data$DateTime, subset_data$Sub_metering_1,
     type="l",
     ylab="Energy sub metering",
     xlab="")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col="red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col="blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty=1)
dev.off()
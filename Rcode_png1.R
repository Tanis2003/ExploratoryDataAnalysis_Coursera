# Common code for all plots (put this at start of each plot#.R file)
data <- read.csv("/Users/tanishqshahare/Downloads/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
subset_data <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & 
                        as.Date(DateTime) <= as.Date("2007-02-02"))

# plot1.R
png("plot1.png", width=480, height=480)
hist(subset_data$Global_active_power, 
     col="red", 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()
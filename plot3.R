table <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = "." )
#head(table)
#str(table)

use_data <- table[table$Date %in% c("1/2/2007","2/2/2007") ,]

use_data$Sub_metering_1 <- as.numeric(use_data$Sub_metering_1)
use_data$Sub_metering_2 <- as.numeric(use_data$Sub_metering_2)
use_data$Sub_metering_3 <- as.numeric(use_data$Sub_metering_3)

x = paste(use_data$Date, use_data$Time, sep = " ")
day <- strptime(x, format = "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(day, use_data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
points(day, use_data$Sub_metering_2, xlab = "", ylab = "Energy sub metering", type = "l", col = "red")
points(day, use_data$Sub_metering_3, xlab = "", ylab = "Energy sub metering", type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

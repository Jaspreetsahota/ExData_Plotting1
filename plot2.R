table <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = "." )
#head(table)
#str(table)

use_data <- table[table$Date %in% c("1/2/2007","2/2/2007") ,]

Global_active_power = as.numeric(use_data$Global_active_power)
x = paste(use_data$Date, use_data$Time, sep = " ")
day <- strptime(x, format = "%d/%m/%Y %H:%M:%S")
#head(day)
#str(day)
png("plot2.png", width=480, height=480)
plot(day, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
dev.off()

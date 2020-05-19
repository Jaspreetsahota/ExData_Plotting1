table <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = "." )
#head(table)
#str(table)

use_data <- table[table$Date %in% c("1/2/2007","2/2/2007") ,]
Global_active_power = as.numeric(use_data$Global_active_power)
#head(Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

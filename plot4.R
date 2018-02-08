source('/Users/Jostein/stories/ExData_Plotting1/analysis.R')

# Plot 4
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
hist(newDf$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")

plot(newDf$Time2, newDf$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l", xlab = " ")

plot(newDf$Time2, as.numeric(newDf$Sub_metering_1), xlab = "", ylab = "Energy Sub Metering", type = "l", col = "Black")
legend("topright", box.lwd = 0, col = c("Black", "Red", "Blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
lines(newDf$Time2, as.numeric(newDf$Sub_metering_2), col = "Red")
lines(newDf$Time2, as.numeric(newDf$Sub_metering_3), col = "Blue")

plot(newDf$Time2, newDf$Global_reactive_power, xlab = "date time", ylab = "Global Reactive Power", type = "l")
lines(newDf$Time2, newDf$Global_reactive_power)
dev.off
source('/Users/Jostein/stories/ExData_Plotting1/analysis.R')

# Plot 3
png("plot3.png", width=480, height=480)
plot(newDf$Time2, as.numeric(newDf$Sub_metering_1), xlab = "", ylab = "Energy Sub Metering", type = "l", col = "Black")
legend("topright", col = c("Black", "Red", "Blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
lines(newDf$Time2, as.numeric(newDf$Sub_metering_2), col = "Red")
lines(newDf$Time2, as.numeric(newDf$Sub_metering_3), col = "Blue")
dev.off
source('/Users/Jostein/stories/ExData_Plotting1/analysis.R')

# Plot 2
png("plot2.png", width=480, height=480)
plot(newDf$Time2, newDf$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l", xlab = " ")
dev.off
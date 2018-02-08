source('/Users/Jostein/stories/ExData_Plotting1/analysis.R')

# Plot 1
png("plot1.png", width=480, height=480)
hist(newDf$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
dev.off
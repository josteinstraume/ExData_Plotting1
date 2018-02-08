library(lubridate)
library(ggplot2)
filePath <- '/Users/Jostein/stories/ExData_Plotting1/data/household_power_consumption.txt'
df <- read.csv2(filePath, header = TRUE)

# Check out the structure of the dataframe
str(df)

# Create new attribute to convert date attribute into a Date class
df$Date2 <- dmy(df$Date)

# Transform into date time class
df$Time2 <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
#df$Date2 <- strptime(df$Date, format="%y-%m-%d, %I:%M%p")

# Create new dataset as a subset of the original within the 2 day period
newDf <- df["2007-02-01" <= df$Date2 & df$Date2 <= "2007-02-02",]

# Confirm new dataset is within the 2 day period
range(newDf$Date2)

#ggplot(newDf, aes(newDf$Global_active_power)) + geom_histogram(stat="count")

# Convert global active power to class numeric for histogram
newDf$Global_active_power <- as.numeric(newDf$Global_active_power)
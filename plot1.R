## Loading power data

## First assignment in Coursera Exploratory Data Analysis

##
## The project use data from the UC Irvine Machine Learning Repository
## The dataset used is Electric power consumption
##

if (!file.exists("./data/household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./household_power_consumption.zip")
    householdPowerConsumption <- unzip("./household_power_consumption.zip", overwrite = TRUE, exdir = ".")
}

## Read the text file into powerConsumptionData

powerConsumptionData <- read.table(householdPowerConsumption, header = TRUE, sep = ";",
                                   na.strings = "?")

## plotting data to numeric

powerConsumptionData$Global_active_power <- as.numeric(as.character(powerConsumptionData$Global_active_power))
powerConsumptionData$Global_reactive_power <- as.numeric(as.character(powerConsumptionData$Global_reactive_power))
powerConsumptionData$Voltage <- as.numeric(as.character(powerConsumptionData$Voltage))
powerConsumptionData$Sub_metering_1 <- as.numeric(as.character(powerConsumptionData$Sub_metering_1))
powerConsumptionData$Sub_metering_2 <- as.numeric(as.character(powerConsumptionData$Sub_metering_2))
powerConsumptionData$Sub_metering_3 <- as.numeric(as.character(powerConsumptionData$Sub_metering_3))
powerConsumptionData$Date <- as.Date(powerConsumptionData$Date, format = "%d/%m/%Y")
powerConsumptionData <- powerConsumptionData[(powerConsumptionData$Date == "2007-02-01") | (powerConsumptionData$Date == "2007-02-02"),]
powerConsumptionData <- transform(powerConsumptionData, timestamp = as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

## Plot 1

with(powerConsumptionData, hist(Global_active_power, main = "Global Active Power",
                                xlab = "Global Active Power (kilowatts)", col = "red"))
dev.copy(png, file = "Plot1.png", width = 480, height = 480)
dev.off() ## close the PNG file device
cat("Plot1.png file has been saved to ", getwd()) ## Show where the plot is saved to

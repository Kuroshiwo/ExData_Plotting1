## Plot 2

with(powerConsumptionData, plot(timestamp, Global_active_power, type = "l",
                                xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.copy(png, file = "Plot2.png", width = 480, height = 480)
dev.off()
cat("Plot2.png file has been saved to ", getwd())

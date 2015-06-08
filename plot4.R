## Plot 4
par(mfrow = c(2, 2))

# Plot 1
with(powerConsumptionData, plot(timestamp, Global_active_power, type = "l",
                                xlab = "", ylab = "Global Active Power"))

# Plot 2
with(powerConsumptionData, plot(timestamp, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

# Plot 3
with(powerConsumptionData, plot(timestamp, Sub_metering_1, type = "l", xlab = "", col = "black",
     ylab = "Energy sub metering"))
with(powerConsumptionData, lines(timestamp, Sub_metering_2, col = "red"))
with(powerConsumptionData, lines(timestamp, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
    "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1), bty = "n", cex = 0.5)

# Plot 4
with(powerConsumptionData, plot(timestamp, Global_reactive_power, type = "l", xlab = "datetime", 
    ylab = "Global_reactive_power"))

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
cat("Plot4.png file has been saved to ", getwd())

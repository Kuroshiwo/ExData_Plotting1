## Plot 3

with(powerConsumptionData, plot(timestamp, Sub_metering_1, type = "l", xlab = "",
                                ylab = "Energy sub metering"))
with(powerConsumptionData, lines(timestamp, Sub_metering_2, col = "red"))
with(powerConsumptionData, lines(timestamp, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1)
dev.copy(png, file = "Plot3.png", width = 480, height = 480)
dev.off()
cat("Plot3.png file has been saved to ", getwd())

#plot the plot3

with(Main_data, {plot(Sub_metering_1~Datetime, type = "l", ylab =
                "Global Active Power (killowatts)", xlab = "")
                lines(Sub_metering_2~Datetime, col = "red")
                lines(Sub_metering_3~Datetime, col = "blue")})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, "plot3.png")
dev.off()
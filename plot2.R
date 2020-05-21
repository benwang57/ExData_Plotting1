# this is for plot 2

#plot the line plot
with(Main_data, plot(Global_active_power~Datetime, type = "l",
                     ylab = ("Global Active Power (killowatts"), xlab = ""))

#save it to plot2.png
dev.copy(png, "plot2.png")
dev.off()
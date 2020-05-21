# this is for plot 1
#first step is to convert Global active power to numeric data
Main_data <- mutate (Main_data, Global_active_power = as.numeric(as.character(Global_active_power)))

#Plot function
hist(Main_data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#save it to plot1.png
dev.copy(png, "plot1.png")
dev.off()
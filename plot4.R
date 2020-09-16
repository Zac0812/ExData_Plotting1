#Plot 4

#Note: we must run the `source.r` file because there we load ours dataset, 
#my locale date and time Spanish Mexico.1252 so our x-axis labels should be different eg. ("Thur" = "jue.")

#source("Source.r")

# par()["mfrow"]
# c(1,1)

png(file = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(df, {
  plot(x = df$DateTime, y = df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(x = df$DateTime, y = df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  
  plot(x = df$DateTime, y = df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(x = df$DateTime, y = df$Sub_metering_2, type = "l", col = "red")
  lines(x = df$DateTime, y = df$Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = 1, 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(x = df$DateTime, y = df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
})

dev.off()


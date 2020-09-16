#Plot 1 

# Note: we must run the `source.r` file because here we load ours dataset

#format
png(file = "plot1.png", width=480, height=480)
#plotting
hist(df$Global_active_power, col = "red", xlab = "Global Active Power(Kilowats)", 
     main = "Global Active Power")
#close
dev.off()

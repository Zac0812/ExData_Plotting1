#Plot 1 

#Note: we must run the `source.r` file because there we load ours dataset, 

#source("Source.r")

#format
png(file = "plot1.png", width=480, height=480)
#plotting
hist(df$Global_active_power, col = "red", xlab = "Global Active Power(Kilowats)", 
     main = "Global Active Power")
#close
dev.off()

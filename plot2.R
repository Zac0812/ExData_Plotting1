
#Plot 2

#Note: we must run the `source.r` file because there we load ours dataset, 
#my locale date and time Spanish Mexico.1252 so our x-axis labels should be different eg. ("Thur" = "jue.")

#source("Source.r")

#format
png(file = "plot2.png", width=480, height=480)

#plotting
plot(df$DateTime,df$Global_active_power, xlab = "",
     ylab="Global Active Power(Kilowats)", type = "l")

#close
dev.off()

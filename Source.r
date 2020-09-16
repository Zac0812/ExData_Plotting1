

#get current directory
library(tidyverse)
library(lubridate)
getwd()

rm(list = ls())

#load the file "household_power_consumption.txt" from our current directory
df<-read_delim("household_power_consumption.txt",n_max = 10, delim = ";", col_names =  TRUE,
               na = c("?", "NA"))
test<-df[Year(df$Date)==2007,]


#reading only rows of interest - 01/02/2007-00:00 to 02/02/2007-23:59
df<-read.table("household_power_consumption.txt",skip=66637,nrows=2880, header=F,sep=";",na.string=c("?"), comment.char="")
#adding col names
colnames(df)<-names(read.table("household_power_consumption.txt",nrows=1,header=T,sep=";"))
#Changing factor by data
df$Date<-dmy(df$Date)
#adding a new column datatime
df$DateTime<-ymd_hms(paste(df$Date,df$Time)) 


#reviwing dataset
#str(df)





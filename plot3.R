with(data, {
  plot(Sub_metering_1 ~ Datetime, type="l", ylab="Global Active Power (kilowatts)", 
       xlab="", xaxt="n")  # Varsay??lan X eksenini kald??r
  
  lines(Sub_metering_2 ~ Datetime, col='Red')
  lines(Sub_metering_3 ~ Datetime, col='Blue')
})

# X eksenine g??nleri ekle
ticks <- seq(min(data$Datetime), max(data$Datetime) + 3600 * 12, by="day")
axis(1, at=ticks, labels=format(ticks, "%a"))  

# Legend ekle
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")
axis.POSIXct(1, data$Datetime, format="%a")
str(data$Datetime)  
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")  


axis(1, at=seq(min(data$Datetime), max(data$Datetime), by="day"), 
     labels=format(seq(min(data$Datetime), max(data$Datetime), by="day"), "%a"))
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n") 


ticks <- seq(min(data$Datetime), max(data$Datetime) + 1, by="day")

axis(1, at=ticks, labels=format(ticks, "%a"))
range(data$Datetime)
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n") 


ticks <- seq(min(data$Datetime), max(data$Datetime) + 86400, by="day")

axis(1, at=ticks, labels=format(ticks, "%a"))

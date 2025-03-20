
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")
axis.POSIXct(1, data$Datetime, format="%a")
str(data$Datetime)  # Veri tipini kontrol et
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")  # xaxt="n" ekseni kald??r??r

# X eksenini g??n isimleriyle ayarla
axis(1, at=seq(min(data$Datetime), max(data$Datetime), by="day"), 
     labels=format(seq(min(data$Datetime), max(data$Datetime), by="day"), "%a"))
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")  # xaxt="n" ekseni kald??r??r

# X eksenini g??n isimleriyle ayarla ve ekseni tam kapsayacak ??ekilde geni??let
ticks <- seq(min(data$Datetime), max(data$Datetime) + 1, by="day")

axis(1, at=ticks, labels=format(ticks, "%a"))
range(data$Datetime)
plot(data$Global_active_power ~ data$Datetime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")  # xaxt="n" ekseni kald??r??r

# X ekseni i??in g??nleri hesapla (bir g??n fazladan ekleyerek Sat etiketi dahil ediliyor)
ticks <- seq(min(data$Datetime), max(data$Datetime) + 86400, by="day")

axis(1, at=ticks, labels=format(ticks, "%a"))

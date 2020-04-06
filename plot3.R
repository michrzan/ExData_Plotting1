library(data.table)
my_dates <- c( as.Date("2007-02-01"),  as.Date("2007-02-02"))
hh <- fread("household_power_consumption.txt", na.strings = "?")
hh$Date <- as.Date(hh$Date, format = "%d/%m/%Y")
hh <- hh[Date %in% my_dates]

#3
plot(hh$Sub_metering_1, type="l", col="black", xlab=NA, ylab="Energy sub metering", axes = FALSE, frame.plot=TRUE)
lines(hh$Sub_metering_2, type="l", col="red")
lines(hh$Sub_metering_3, type="l", col="blue")
axis(1, seq(1,2880,2880/2-1), labels=c('Thu', 'Fri', 'Sat'))
axis(2, seq(0,30,10))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

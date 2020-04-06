library(data.table)
my_dates <- c( as.Date("2007-02-01"),  as.Date("2007-02-02"))
hh <- fread("household_power_consumption.txt", na.strings = "?")
hh$Date <- as.Date(hh$Date, format = "%d/%m/%Y")
hh <- hh[Date %in% my_dates]

#2
plot(hh$Global_active_power ,  type="l", axes=FALSE, xlab=NA, ylab="Global Active Power (kilowatts)", frame.plot=TRUE)
axis(1, seq(1,2880,2880/2-1), labels=c('Thu', 'Fri', 'Sat'))
axis(2, seq(0,6,1))

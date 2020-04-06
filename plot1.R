library(data.table)
my_dates <- c( as.Date("2007-02-01"),  as.Date("2007-02-02"))
hh <- fread("household_power_consumption.txt", na.strings = "?")
hh$Date <- as.Date(hh$Date, format = "%d/%m/%Y")
hh <- hh[Date %in% my_dates]

#1
hist(hh$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylim = c(0,1200), axes=TRUE)

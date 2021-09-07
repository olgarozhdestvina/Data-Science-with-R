# Working with time and dates
Sys.Date()
time1 <- Sys.time()
Sys.Date() + 1
Sys.time() - 3600 # subtract 1 hour (by sec)
class(Sys.Date())
class(Sys.time())
as.numeric(Sys.time())
as.character(Sys.time())

# sequence of recent dates (10 days)
dates <- Sys.Date() - 10:1
weekdays(dates)
months(dates)

seq(as.POSIXct('1990-03-10 00:00:00'), as.POSIXct('1990-03-16 00:00:00'), by='hour')
Sys.time() - (12:1)*3600 # the last 12 hourly timestamps
time2 <- Sys.time()
time2 - time1
difftime(time2, time1, units='sec')
as.numeric(difftime(time2, time1, units='days'))
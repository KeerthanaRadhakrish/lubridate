##lubridate
library(swirl)
library(lubridate)

Sys.getlocale("LC_TIME")
help(package = lubridate)

this_day<-today()
month(this_day)
wday(this_day,label = TRUE)

this_moment<-now()
second(this_moment)

my_date<-ymd("1989-05-17")
class(my_date) 
ymd("1989 May 17")
mdy("March 12, 1975")
dmy(25081985)

dt1
ymd_hms(dt1)
hms("03:22:14")

dt2
ymd(dt2)
update(this_moment,hours= 8, minutes= 34, seconds = 55)
this_moment<-update(this_moment,hours=10,minutes=16,seconds=0)
this_moment

nyc<-now(tz="America/New_York")
depart<-nyc+days(2)
depart<-update(depart,hours= 17,minutes=34)

arrive <- depart + hours(15) + minutes(50)
arrive<-with_tz(arrive,"Asia/Hong_Kong")

last_time<-mdy("June 17, 2008",tz="Singapore")

how_long<-interval(last_time,arrive)
as.period(how_long)
stopwatch() 

calculate_age=function(birth_date){
  current_date=Sys.Date()
  age=as.integer(difftime(current_date,birth_date,units="days")/365.25)
  return(age)
}
birth_date=as.Date("1990-05-15")
age=calculate_age(birth_date)
cat("Age ",age," In years")
##########################################################################
days_between=function(date1,date2){
  
  days=as.integer(difftime(date1,date2,units="days"))
  return(days)
}
date1=as.Date("2023-08-18")

date2=as.Date("2023-01-15")
days=days_between(date1,date2)
cat(days)
#########################################################################
convert_datetime_format=function(datetime_string){
  datetime=as.POSIXct(datetime_string,format="%Y-%m-%d %H:%M:%S")
  formatted_date=format(datetime,format="%A,%B %d %Y")
  formatted_time=format(datetime,format="%I:%M %p")
  getdatetime=paste(formatted_date,formatted_time)
  return(getdatetime)
  
}
datetime_string="2023-08-18 14:30:00"
getdatetime=convert_datetime_format(datetime_string)
cat(getdatetime)
###################################################################
extract_day_and_week=function(datetime_string){
  datetime=as.POSIXct(datetime_string,format="%Y-%m-%d %H:%M:%S")
  day_of_year=as.numeric(format(datetime,format="%j"))
  week_number=as.numeric(format(datetime,format="%U"))
  result=list(day_of_year=day_of_year,week_number=week_number)
  return(result)
}
datetime_string="2023-08-18 14:30:00"
result=extract_day_and_week(datetime_string)
print(result$day_of_year)
print(result$week_number)


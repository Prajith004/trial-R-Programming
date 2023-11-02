emp.data=read.csv("input .csv")
print(emp.data)
str(emp.data)


############################################################
emp.data_new=data.frame(
  id=c(6:8),
  name=c("Raju","Praveer","Naga"),
  salary=c("72000","90000","100000"),
  start_date=c("01-01-23","01-02-23","01-04-23"),
  dept=c("IT","Operations","HR")
)
emp.data=rbind(emp.data,emp.data_new)
print(emp.data)
###########################################################
result1=subset(emp.data,salary==max(emp.data$salary))
print(result1)

result2=data.frame(emp.data$name,emp.data$salary)
print(result2)
#################################################
result3=subset(emp.data,dept==""&salary>80000)
print(result3)
max(emp.data$salary)

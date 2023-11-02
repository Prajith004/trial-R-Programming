h=c(7,12,28,8,41)
m=c("March","April","May","June","July")
png(file="bra1.png")
barplot(h,names.arg=m,xlab="Months",ylab="Revenue",main="Revenue Chart",col=rainbow(length(m)))
dev.off()
###############################################################################################
png(file="Line.png")
plot(h,type = "o",xlab="category",ylab = "value",main="line chart")
dev.off()
##############################################################################################
r=c(19,23,11,5,16,21,32,14,19,27,37)
png(file="hist.png")

hist(r,main="Simple Histogram For Range Of Values",xlab="value",ylab="frequency")
dev.off()
##############################################################################################
r=c(19,23,11,5,16,21,32,14,19,27,37)
png(file="hist1.png")
br=c(0,10,20,30,40)
hist(r,breaks=br,main="Simple Histogram For Range Of Values",xlab="value",ylab="frequency")
dev.off()
x=c(21,62,10,53)
labels=c("London","Nyc","Singapore","Mumbai")
png(file="city.png")
pie(x,labels)
dev.off()

#################################################################
pie_percentage=round((100*x)/sum(x),1)
png(file="City_percentage.png")
pie(x,labels = pie_percentage,main = "City Pie Percentage",col =rainbow(length(x)))
legend("topright",c("London","Nyc","Singapore","Mumbai"),cex = 1,fill = rainbow(length(x)))
dev.off()
################################################################################
png(file="pie_3d.png")


pie3D(x,labels = pie_percentage,explode = 0.1,main="city pie percentage",col=rainbow(length(x)))
legend("topright",c("London","Nyc","Singapore","Mumbai"),cex=1.2,fill = rainbow((length(x))))
dev.off()
pie3
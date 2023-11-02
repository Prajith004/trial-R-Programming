data("mtcars")
png(file="boxplot.png")
boxplot(mpg~cyl,data=mtcars,xlab = "Number Of Cylinders",ylab="Miles Per Gallon",main="Mileage Data")
dev.off()
######################################################################################
input=mtcars[,c("wt","mpg")]
png(file="scalerplot1.png")
plot(x=input$wt,y=input$mpg,xlab = "Weight",ylab = "Miles Per Gallon",main = "Weight vs Miles Per Gallon ")
dev.off()

###################################################################################
input=mtcars[,c("wt","mpg")]
png(file="scalerplot2.png")
plot(x=input$wt,y=input$mpg,xlab = "Weight",ylab = "Miles Per Gallon",main = "Weight vs Miles Per Gallon ",
     xlim = c(2.5,5),ylim = c(15,30))
dev.off()


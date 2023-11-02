library(purrr)
data=c(2,4,10,15,20)
data%>%map(function(x) x^2)
#################################################
list=list(c(1,2,3),c(4,5,6),c(7,8,NA))
list%>%map(mean,na.rm=TRUE)
#####################################################
library(stringr)
text="Valhar Morghulis"
new_text=str_replace(text,"Morghulis","lol")
print(new_text)

x=c("R","Programming","Java")
count=str_length(x)
print(count)
##########################################################
gfg=data.frame(x=c("A","b","c","d","e","f"),y=c(1,2,3,4,5,6))
ggplot(gfg,aes(x,y,fill=x))+geom_bar(stat = "identity")

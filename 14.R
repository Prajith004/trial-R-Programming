x=c(12,7,3,4,2,18,2,54,-21,8,5)
print(mean(x))
###########################################################3
trim_mean=mean(x,trim=0.3)
print(trim_mean)

na_mean=c(12,7,3,4,2,18,2,54,-21,8,5,NA)
print(mean(na_mean,na.rm=TRUE))
###############################################################

v=c(2,1,2,3,1,2,3,4,1,5,1,5,3,2,3)
print(median(v))

getmode=function(charv){
  uniqv=unique(charv)
  uniqv[which.max(tabulate(match(charv,uniqv)))]
}
charv=c("o","it","the","it","it")
result=getmode(charv)
print(result)

revenuedf=data.frame(
  Group=c(1,1,1,1,2,2,2,2,3,3,3,3),
  Year=c(2006,2007,2008,2009,2006,2007,2008,2009,2006,2007,2008,2009),
  Qtr.1=c(15,12,22,10,12,16,13,23,11,13,17,14),
  Qtr.2=c(16,13,22,14,13,14,11,20,12,11,12,9),
  Qtr.3=c(19,27,24,20,25,21,29,26,22,27,23,31),
  Qtr.4=c(17,23,20,16,18,19,15,20,16,21,19,24)
)
print(revenuedf)
long=revenuedf%>%gather(Quater,Revenue,Qtr.1:Qtr.4)
print(long)

seperate_df=long%>%separate(Quater,c("Time_Interval","Interval_ID"))
print(seperate_df)

unite_df=seperate_df%>%unite(Quater,Time_Interval,Interval_ID,sep = ".")
print(unite_df)

back_to_wide=unite_df%>%spread(Quater,Revenue)
print(back_to_wide)

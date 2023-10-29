df1=data.frame(
  student_id=c(101:106),
  English=c(83,78,86,89,96,92),
  Maths=c(73,88,76,99,86,72),
  Science=c(73,88,66,79,96,72)
)
print(df1)
df2=data.frame(
  student_id=c(101:106),
  state=c("Goa","Tamil Nadu","Kerala","Assam","Nagaland","Karnataka")
)
df3=merge(x=df1,y=df2,by="student_id")
print(df3)
##################################################################
df3=cbind(df3,social=c(76,87,56,98,45,78))
print(df3)
newdf=data.frame(
  student_id=c(107:108),
  English=c(73,87),
  Maths=c(42,84),
  Science=c(73,88),
  state=c("Goa","Tamil Nadu"),
  social=c(69,77)
)
df3=rbind(df3,newdf)
print(df3)
print(df3[,c("student_id","state")])
###############################################################################
molten_df=melt(df3,id=c("student_id","state"),variable = "Subjects")
print(molten_df)
cast_df=cast(molten_df,student_id+state~Subjects)
print(cast_df)

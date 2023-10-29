#########################################################################
m1=matrix(c(23,45,12,1,5,6,90,34,56),nrow = 3,ncol = 3,byrow = TRUE)
print(m1)
m2=matrix(c(11,12,13,14,15,16,17,18,19),nrow = 3,ncol = 3,byrow = TRUE)
print(m2)
sum_matrix=m1+m2
print(sum_matrix)
sub_matrxi=m1-m2
print(sub_matrxi)
product=m1%*%t(m1)
print(product)
################################################################################
colSums(m1)
apply(m1,1,mean)
sum(m1)
apply(m1,2,sort)
#############################################
invm=solve(m1)
print(invm)
which(m1==max(m1),arr.ind = TRUE)
which(m1==min(m1),arr.ind = TRUE)

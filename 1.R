check_odd_even=function(num){
  if(num%%2==0){
    cat(num," Number is even")
  }else{
    cat(num," Number is odd")
  }
}
print("Enter The Number")
a=as.integer(scan(nlines = 1))
check_odd_even(a)
########################################################################
square_in_sequence=function(number){
  for(i in 0:number){
    print(i^2)
  }
}
print("Enter The Number")
number=as.integer(scan(nlines = 1))
square_in_sequence(number)
########################################################
sort_numbers=function(numbers){
  ascending=sort(numbers,decreasing = FALSE)
  
  cat("ascending",ascending,"\n")
  
  descending=sort(numbers,decreasing = TRUE)
  cat("descending",descending)
  
}
print("Enter 6 Numbers")
numbers=as.integer(scan(nline=6))
sort_numbers(numbers)
##############################################################
factorial=function(factor){
  fact=1
  for(i in 1:factor){
    fact=fact*i
  }
  cat("Factorial of ",factor,"is" ,fact)
}
print("Enter The Number")
factor=as.integer(scan(nlines = 1))
factorial(factor)
########################################################
factors=function(n){
  cat("Factors of ",n,"are")
  for(i in 1:n){
    if(n%%i==0){
      print(i)
    }
  }
  
}
print("Enter The Number")
n=as.integer(scan(nlines = 1))
factors(n)

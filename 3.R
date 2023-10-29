string_operation=function(input_string){
  print(nchar(input_string))
  print(toupper(input_string))
  n=nchar(input_string)+1
  mid=substring(input_string,n%/%2,(n+1)%/%2)
  print(mid)
  
}
print("Enter The String")
input_string=readline("Enter Your Name:")
string_operation(input_string)
#################################################################################################
palindrome=function(input){
  a=substring(input,seq(1,nchar(input)),seq(1,nchar(input)))
  rev(a)
  if(paste(rev(a),sep = "",collapse = "")==paste(a,sep = "",collapse = "")){
    cat(input,"Is a palindrome")
  }else{
    cat(input,"Is not a palindrome")
  }
  
}

input=readline("Enter The String")
palindrome(input)
##############################################################################################
gl(2,4,20,labels=c("OFF","ON"),ordered = TRUE)








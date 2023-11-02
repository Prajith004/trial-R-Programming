student_data=data.frame(
  student_id=c(1:10),
  name=c("John","Alice","Bob","Emily","Charlie","Eva","David","Grace","Frank","Hannah"),
  Math_score=c(85,90,78,88,76,95,70,83,79,80),
  Science_score=c(89,92,75,88,84,80,91,78,85,72),
  English_score=c(90,88,72,90,86,75,93,68,79,74)
)
filepath="C:\\Users\\Asus\\OneDrive\\Documents\\studentdata.csv"
write.csv(student_data,filepath,row.names = FALSE)

read_csv_data <- function(file_name) {
  data <- read.csv(file_name)
  return(data)
}
# Function to read CSV data
data <- read_csv_data("studentdata.csv")
find_highest_total_score <- function(data) {
  total_scores <- data$Math_Score + data$Science_Score + data$English_Score
  max_index <- which.max(total_scores)
  highest_scoring_student <- data[max_index, "Name"]
  return(highest_scoring_student)
}
highest_scoring_student <- find_highest_total_score(data)
cat("Student with the highest total score:", highest_scoring_student, "\n")
####################################################################################
# Get the max salary from data frame.
calculate_pass_percentage <- function(data, threshold) {
  passing_students <- data[data$Math_Score >= threshold & data$Science_Score >= threshold & data$English_Score >= threshold, ]
  pass_percentage <- (nrow(passing_students) / nrow(data)) * 100
  return(pass_percentage)
}
# Function to calculate pass percentage
pass_percentage <- calculate_pass_percentage(data, 70) # Assuming the pass threshold is 70
cat("Pass Percentage:", pass_percentage, "%\n")



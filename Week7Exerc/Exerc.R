#Task Uno ----
Name       <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender     <- c("Female", "Male", "Female", "Male", "Female")
Age        <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)   #Attendance (%) column

# Combine into a data frame
students <- data.frame(Name, Gender, Age, Test_Score, Attendance)

# View the data frame (guna View for table)
students
View(students)

#Task Dos ----
students["Test_Score"]   # returns a data frame with just that 1 column
students$Test_Score      # returns the raw values as a vector- tanya Desmond 
# first 3 rows
head(students, 3)
older_students <- students[students$Age > 22, ]
View(older_students)

high_scoring_females <- students[students$Gender == "Female" & students$Test_Score > 80, ]
View(high_scoring_females)

#Task Tres ----
new_student <- data.frame(
  Name = "Lina", Gender = "Male", Age = 20,
  Test_Score = 95, Attendance = 92
)

students <- rbind(students, new_student)
students

#Task Quattro ----
students_na <- data.frame(
  Name       = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender     = c("Female", "Male", "Female", "Male", "Female"),
  Age        = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)

# Checking missing value
is.na(students_na)           # T/F grid
colSums(is.na(students_na))  # count of N/A per column

# Replace N/A in Age with the mean age - ask Des
students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm = TRUE)

# Replace N/A in Test_Score with the median - Bin ask
students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm = TRUE)

# Replace N/A in Attendance with 0 
students_na$Attendance[is.na(students_na$Attendance)] <- 0

students_na





user_string <- readline("Enter a string:\n")
cat("Your string was: ", user_says)


#Step 1 ########################################################################
# Import Data-set to R. Then, Run the commend "mean" using Sex as the category 
# (use plyr package for this operation). Last commend in this step: write the 
# resulting output to a file.
library(plyr)

# Read Table in through console input
# FileName to input is: Assignment 6 Dataset-1
Student <- read.csv("Assignment 6 Dataset-1.txt", header = TRUE)

StudentAverage = ddply(Student, "Sex", summarize, Grade.Average = mean(Grade))

write.table(StudentAverage, "StudentAverage")

#Step 2 ########################################################################
# Convert the data set to a dataframe for names whos' name contains the letter i, 
# then create a new data set with those names, Write those names to a file separated 
# by comma’s (CSV)

i_students <- subset(Student, grepl("i", Student$Name, ignore.case = TRUE))

#Step 3 ########################################################################
# Write the filtered data set and convert it to CSV file 

write.csv(i_students, "i_students")


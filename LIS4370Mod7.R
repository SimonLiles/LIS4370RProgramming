#Load in some data
my_iris <- iris

#Attempting Generic Functions
head(my_iris)
list(my_iris)

#*OUTPUT:
#> head(my_iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
# > list(my_iris)
# [[1]]
#     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 1            5.1         3.5          1.4         0.2     setosa
# 2            4.9         3.0          1.4         0.2     setosa
# 3            4.7         3.2          1.3         0.2     setosa
# 4            4.6         3.1          1.5         0.2     setosa
# 5            5.0         3.6          1.4         0.2     setosa
# 6            5.4         3.9          1.7         0.4     setosa
# Max size reached, 144 rows excluded

#Is the data set an S3, or an S4?
isS4(my_iris)

#OUTPUT:
# > isS4(my_iris)
# [1] FALSE

#Creating an S3 and S4
my_s3 <- list(name = "Bob", job_title = "Coder", pay = 30000)
class(my_s3) <- "Employee"
mode(my_s3)
attributes(my_s3)
mode(my_s3$name)

# OUTPUT: 
# > my_s3 <- list(name = "Bob", job_title = "Coder", pay = 30000)
# > class(my_s3) <- "Employee"
# > mode(my_s3)
# [1] "list"
# > attributes(my_s3)
# $names
# [1] "name"      "job_title" "pay"      
# 
# $class
# [1] "Employee"
# > mode(my_s3$name)
# [1] "character"

setClass("Employee", 
         representation(
           name = "character",
           job_title = "character",
           pay = "numeric"
         ))

my_s4 <- new("Employee", name = "Bob", job_title = "Coder", pay = 30000)
my_s4
mode(my_s4)
mode(slot(my_s4, "name"))
mode(my_s4@name)

# OUTPUT: 
# > setClass("Employee", 
# +          representation(
# +            name = "character",
# +            job_title = "character",
# +            pay = "numeric"
# +          ))
# > my_s4 <- new("Employee", name = "Bob", job_title = "Coder", pay = 30000)
# > my_s4
# An object of class "Employee"
# Slot "name":
#   [1] "Bob"
# 
# Slot "job_title":
#   [1] "Coder"
# 
# Slot "pay":
#   [1] 30000
# 
# > mode(my_s4)
# [1] "S4"
# > mode(slot(my_s4, "name"))
# [1] "character"
# > mode(my_s4@name)
# [1] "character"


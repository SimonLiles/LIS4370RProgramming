# Given Sample data
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Original given function to examine
myMean <- function(assignment2) { 
  return(sum(assignment)/length(someData)) 
}

myMean(assignment2)
# Error in myMean(assignment2) : object 'assignment' not found

# Change assignment2 and assignment to x
myMean <- function(x) { 
  return(sum(x)/length(someData)) 
}

myMean(assignment2)
# Error in myMean(assignment2) : object 'someData' not found

# Change someData to x
myMean <- function(x) { 
  return(sum(x)/length(x)) 
}

myMean(assignment2)
# [1] 19.25

# The orginal function did not work because the variable names used in the
# equation were never initialized. I assume they were intended to match the
# name of the argument given in function(), and thus the errors were fixed by
# changing the name to something more appropriate to the context and using it
# throughout the function. 
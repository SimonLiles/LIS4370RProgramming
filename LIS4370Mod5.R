#Simon Liles
#2/14/2021
#LIS4370

#Given matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

#Transpose the matrices
A_t <- t(A)
B_t <- t(B)

#Create two vectors
A_vector <- c(1:10)
B_vector <- c(1:100)

#Multiply the matrices by the vectors
A_multiplied <- A %*% A_vector
B_multiplied <- B %*% B_vector

#re-assign the vectors a and b to equal the number of rows of the column for the
#corresponding matrix
A_vector <- nrow(A)
B_vector <- nrow(B)

#Multiply the matrix by a matrix
C <- A %*% B

#Inverse the matrix
S <- matrix(2:5, nrow = 2)
solve(S)

solve(A)
solve(B)
#Check det()
det(S)
det(A)
det(B)

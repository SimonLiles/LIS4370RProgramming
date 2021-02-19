# Simon Liles
# 2/19/2021
# LIS 4370

# 1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
A = matrix(c(2, 0, 1, 3), ncol = 2)
B = matrix(c(5, 2,4, -1), ncol = 2)

A
B

# Find A + B
A + B

# Find A - B
A - B

# 2. Using the diag() function to build a matrix of size 4 with the following 
#    values in the diagonal 4,1,2,3.
diag(x = c(4, 1, 2, 3), nrow = 4)

# 3. Generate the following matrix:
#     [,1] [,2] [,3] [,4] [,5]
# [1,]  3    1    1    1    1
# [2,]  2    3    0    0    0
# [3,]  2    0    3    0    0
# [4,]  2    0    0    3    0
# [5,]  2    0    0    0    3

# Method 1
C <- diag(x = 3, nrow = 5)
C[1, 2:5] <- 1
C[2:5 ,1] <- 2
C

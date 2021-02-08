#Simon Liles
#2/7/2021
#LIS 4370

# Variables in vector format
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Measuring consensus among the 3 doctors by representing decisions as 1 or 0
# and the higher the sum, the greater the consensus. 
agreement <- first + second + finalDecision

#Make it a data frame
my_data <- data.frame(Freq, bloodp, first, second, finalDecision, agreement)

#Plot of visit frequency
boxplot(my_data$Freq)
hist(my_data$Freq)

#Plot of blood pressures
boxplot(my_data$bloodp)
hist(my_data$bloodp)

#Plot of first doctor decision
hist(my_data$first)

#Plot of second doctor decision
hist(my_data$second)

#Plot of final decision
hist(my_data$finalDecision)

#Plot of agreement
boxplot(my_data$agreement)
hist(my_data$agreement)

#Plot bloodp against agreement of the doctors
plot(my_data$bloodp, my_data$agreement, type = "h")

#ggplot style
library(ggplot2)

ggplot(my_data, aes(bloodp, agreement)) + 
  geom_col()

#Simon Liles
#3/14/2021
#LIS4370 Mod 9

#Load packages
library(lattice)
library(reshape2)
library(RColorBrewer)
library(carData)

#Import data
highway_data <- Highway1

#Inspect the data
str(highway_data)
head(highway_data)

#Plot the data

#Creating a corellogram in lattice
#Prepare the data, remove  htype columns htype is a character vector and is 
#   incompatible with cor() function
cor_hwy <- cor(highway_data[,-12])
melted_cor_hwy <- melt(cor_hwy)

#Correlogram
levelplot(value ~ Var1 * Var2, melted_cor_hwy, 
          at = c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1),
          pretty = TRUE, 
          col.regions = brewer.pal(11, "RdBu"))

#Look at correlation values for rate of accidents only
cor_rate_only_hwy <- cor_hwy[,1]
dotplot(names(cor_rate_only_hwy) ~ cor_rate_only_hwy, 
        xlim = c(-1.1,1.1), 
        xlab = "Correlation Coefficient")

#Dot plot for all variables
dotplot(Var1 ~ value | Var2, melted_cor_hwy,  
        xlim = c(-1.1,1.1), 
        xlab = "Correlation Coefficient")





# Load in libraries
library(ggplot2)
library(reshape2)

# Load Sample data set from assignment page
#  Data set is meant to be presidential election data from 2016, however this data
#  has been made up, it does not reflect what actually happened
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19) 

# Store in a dataframe
poll_results <- data.frame(Name, ABC_poll, CBS_poll)
poll_results

# We can see what the results look like by playing with the ranks

# Rank by CBS results
poll_results_CBS_ranked <- poll_results[order(-poll_results$CBS_poll), ]
poll_results_CBS_ranked

# Rank by ABC results
poll_results_ABC_ranked <- poll_results[order(-poll_results$ABC_poll), ]
poll_results_ABC_ranked

# Lets plot the data!

# Melt the dataframe into long format to make plotting easier
poll_results_melted <- melt(poll_results, id = "Name")

# Plot using ggplot
ggplot(poll_results_melted, aes(Name, value, fill = variable)) + 
  geom_col(position = "dodge")

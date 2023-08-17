## Codes: by Sonja Janssen-Sahebzad
## Codes of sentiment analysis of a poem called:
## Poem: Roses are red. Violets are blue. 
## 
# Install Packages 
install.packages("syuzhet")
install.packages("devtools")
devtools::install_github("mjockers")
install.packages("ggplot2")
install.packages(mjockers)

# Import libraries
library(tidyverse)
library(syuzhet)
library(devtools)
library(mjockers)
library(ggplot2)

# Define the poem as a character vector
poem <- c("Roses are red",
          "Violets are blue",
          "Sugar is sweet",
          "And so do you")
## code ok

# Calculate the sentiment score for each line using syuzhet package
sentiment <- get_sentiment(poem)
## code ok

# Create a data frame with the poem and the sentiment score
data <- data.frame(poem, sentiment)
## Code Ok

# Plot the sentiment score using ggplot2 package
ggplot(data, aes(x = 1:4, y = sentiment)) +
  geom_col(fill = "steelblue") +
  geom_text(aes(label = poem), hjust = -0.1, size = 4) +
  scale_x_continuous(breaks = 1:4) +
  labs(x = "Line number", y = "Sentiment score", title = "Sentiment analysis of a poem by sonja Janssen-Sahebzad")

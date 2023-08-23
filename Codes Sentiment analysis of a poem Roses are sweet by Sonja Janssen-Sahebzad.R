## Codes: by Sonja Janssen-Sahebzad
## Codes of sentiment analysis of a poem
## Poem: Roses are red. Violets are blue. Sugar is sweet, I love coding and programming. And so do you.
## Codes created in R.4.2.2 Rstudio
## Date: 03-07-2023

install.packages("syuzhet")
install.packages("devtools")
devtools::install_github("mjockers")
install.packages("ggplot2")
install.packages("geomtextpath")

# Import libraries
library(geomtextpath)
library(tidyverse)
library(syuzhet)
library(devtools)
library(ggplot2)

# Define the poem as a character vector
poem <- c("Roses are red",
          "Violets are blue",
          "Sugar is sweet",
          "I love coding and programming",
          "And so do you")
## code ok

# Calculate the sentiment score for each line using syuzhet package
sentiment <- get_sentiment(poem)
## code ok

# Create a data frame with the poem and the sentiment score
data <- data.frame(poem, sentiment)
## Code Ok

# Plot the sentiment score using ggplot2 package
ggplot(data, aes(x = 1:5, y = sentiment)) +
  geom_col(fill = "green") +
  geom_text(aes(label = poem), hjust = -0.1, size = 3) +
  scale_x_continuous(breaks = 1:5) +
  labs(x = "Line number", y = "Sentiment score", title = "Sentiment analysis of a poem by sonja Janssen-Sahebzad")

## Zie Rplot 09 Poem Roses are red by Sonja Janssen-Sahebzad
## codes ok

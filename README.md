## Code-Poem-Roses-are-red
 # R-programming code Poem by Sonja JS
   Codes: by Sonja Janssen-Sahebzad
   Codes of sentiment analysis of a poem
   codes created in R.4.2.2 Rstudio
   Date: 03-07-2023

# Load the packages
# install.packages("geomtextpath")
install.packages("syuzhet")
install.packages("devtools")
devtools::install_github("mjockers")
install.packages("ggplot2")

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

## Calculate the sentiment score for each line using syuzhet package
sentiment <- get_sentiment(poem)

## Create a data frame with the poem and the sentiment score
data <- data.frame(poem, sentiment)

## Plot the sentiment score using ggplot2 package ( I used also use the package ("geomtextpath") 
ggplot(data, aes(x = 1:5, y = sentiment)) +
  geom_col(fill = "green") +
  geom_text(aes(label = poem), hjust = -0.1, size = 3) +
  scale_x_continuous(breaks = 1:5) +
  labs(x = "Line number", y = "Sentiment score", title = "Sentiment analysis of a poem by sonja Janssen-Sahebzad")

## See  Rplot 09 Poem Roses are red by Sonja Janssen-Sahebzad
## codes ok

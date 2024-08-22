
library(reprex)
library(tidyverse)
library(palmerpenguins)

ggplot(data = penguins, aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()

# creating a reproducible expression to reproduce error

# create a mini dataset to work with based on what we're trying to plot
datapasta::df_paste(head(penguins, 5)[, c("bill_length_mm", "flipper_length_mm")])

## here is my reprex info

my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

ggplot(data = my_data, aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()

# to get the reprex, copy the reprex part (above), and then go to the console and run "reprex()" 
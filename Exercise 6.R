# Exercise 6
# Author: Melissa Abrahams
# 20 January 2020

#adding packages

library(tidyverse)
library(ggpubr)


#loading the data


laminaria <-  read_csv("data/laminaria.csv")

#creating a gplot
ggplot(data = laminaria, aes(x = stipe_mass, y = stipe_length)) +
  geom_line(shape = 15, colour = "orange", fill = "purple") + # creating a point graph
  labs(x = "Stipe mass (kg)", y = "Stipe length (cm)")  # adding x and y labels
  
#creating another g plot showing a different relationship of laminaria
ggplot(data =laminaria,aes(x = thallus_mass, y = total_length))+
  geom_point(shape = 14, colour = "purple", fill = "yellow") + 
  labs(x = "thallus_mass", y = "total_length") +
  geom_smooth(method = "lm", size = 2.0) # changing the thickness of the line


  
  
  
  
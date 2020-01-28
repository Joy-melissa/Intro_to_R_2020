# Exercise_4.5: Laminaria
# 28 January 2020
# Author : Melissa Abrahams 
# loading packages

library(tidyverse)

laminaria <- read_csv("data/laminaria.csv")
head(laminaria)
tail(laminaria)
glimpse(laminaria)


#selecting only specific columns

Exercise_Answer <- laminaria %>% #tell R which dataframe we are using
  select(site, total_length) %>% 
  mutate(total_length_half = (total_length/2)) #select only specific columns
#filtered the range to less 10



Exercise_Answer_1 <- laminaria %>% 
  group_by(site,region,stipe_length) %>% #group dataframe by site,region and stipe length 
  summarise(mean_bl = mean(blade_length), #calculating mean
            min_bl = min(blade_length), #calculating minimum value
            max_bl = max(blade_length), #calculating maximum value
            n_bl = n()) #calculating number of observations



Exersise_Answer_1a <- laminaria %>% 
  group_by(site,region,stipe_length) %>% 
  summarise(max_sm = max(stipe_mass, na.rm = TRUE)) #summarising the largest stipe mass, excluding Na's
  
# Neat scripts
# Good start! keep it up
# Ovrall mark for day 1: 8/10

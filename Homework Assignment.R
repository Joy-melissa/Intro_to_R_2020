# Homework Assignment
# Authors: Melissa Abrahams and Lanah Murray
# Date: 5 february 2020

#laoding the packages 
library(tidyverse)
library(ggpubr)

#laoding the data
load("~/Intro_to_R_2020/data/gebco_sa.Rdata")


#renaming the data and tidying it up
bathy_wide1 <-  gather(bathy_wide, key = long, value = elevation, '7.99166666665':'39.97500006395')

#creating the initial map
ggplot(data = bathy_wide1,aes(x = long, y = lat)) + #creating teh map using the lat and long values, raster converts file into map form
  geom_raster(aes(fill = elevation)) + theme(legend.position = "none") #takes away the legend

#conveting the data frame to numeric values 
bath_wide <- as.data.frame(apply(bathy_wide1,2, as.numeric))


#adding a colour palette and saving it into the environment
#didn't end up using this colour palette coll1 <- c("#48B4B6","#449FA7","#418B98","#3D7887","#396575","#345363") 

#selecting proper colour palette for map
ggplot(data = bath_wide, aes(x = long, y = lat)) +
  geom_raster(aes(fill = elevation))  + 
  scale_fill_gradientn("graph", values = scales::rescale(c(-6129,-1000,0,1,1000,3374)), colours = c("darkblue","turquoise3","darkseagreen1","grey10","darkolivegreen","burlywood3")) #creating colour gradient for map

#changing legend name
ggplot(data = bath_wide, aes(x = long, y = lat)) +
  geom_raster(aes(fill = elevation))  +
  scale_fill_gradientn("Elevation/Depth (m)", values = scales::rescale(c(-6129,-1000,0,1,1000,3374)), colours = c("darkblue","turquoise3","darkseagreen1","grey10","darkolivegreen","burlywood3")) #legend name changed to "elevation/depth(m)

#removing axis titles
ggplot(data = bath_wide, aes(x = long, y = lat)) +
  geom_raster(aes(fill = elevation))  +
  scale_fill_gradientn("Elevation/Depth (m)", values = scales::rescale(c(-6129,-1000,0,1,1000,3374)), colours = c("darkblue","turquoise3","darkseagreen1","grey10","darkolivegreen","burlywood3")) +
  theme(axis.title = element_blank()) #axis title removed 


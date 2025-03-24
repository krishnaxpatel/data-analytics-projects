# Created this generic code to change wide to long format for all datasets I used 
#this just shows the renewable energy dataset
#Install and Load
install.packages('tidyverse')
install.packages ('tidyr')
install.packages ('dplyr')

library(tidyverse)
library(tidyr)
library(dplyr)


# Reshape the data from wide to long format
total_renewable_energy <- read.csv("Total Renewable Energy Production - Total renewables.csv") %>% #Replace with new dataframe name
  pivot_longer(
    cols = -State, # All columns except 'State'
    names_to = "Year",
    values_to = "renewable_energy_production" ## replace with new column name
  ) %>%
  mutate(Year = gsub("X", "", Year))
# Print the resulting long format data
print(total_renewable_energy) 
write.csv(total_renewable_energy, "Total Renewable Energy Production.csv", row.names = FALSE) #replace csv name with file name
# Install and load necessary libraries
# install.packages
library(dplyr)
library(tidyr)

# Create a list of years
years <- 2013:2023

# Create a list to store the data frames
data_list <- list()

# Read the CSV files and store them in the list
for (year in years) {
  filename <- paste0("emissions_region", year, ".csv")
  data <- read.csv(filename)
  # Rename the CO2 column to include the year
  co2_column_name <- paste0("CO2_", year)
  data <- data %>% rename(!!co2_column_name := "Kilograms.of.CO2.per.Megawatthour.of.Generation")
  data_list[[as.character(year)]] <- data
}

# Merge the data frames iteratively
co2_emissions_by_year <- data_list[[as.character(years[1])]] # Start with the first year

for (i in 2:length(years)) {
  co2_emissions_by_year <- inner_join(co2_emissions_by_year, data_list[[as.character(years[i])]], by = "Census.Division.and.State")
}

# Extract state from "Census Division and State" and remove "Year"
co2_emissions_by_year <- co2_emissions_by_year %>%
  mutate(State = gsub("^.* ", "", Census.Division.and.State)) %>%
  select(-Census.Division.and.State, -Year) # Remove "Year" column here

# Pivot the data into long format
long_data <- co2_emissions_by_year %>%
  pivot_longer(
    cols = starts_with("CO2_"),
    names_to = "Year",
    values_to = "Kilograms of Co2 per MWh"
  ) %>%
  mutate(Year = gsub("CO2_", "", Year)) # Remove "CO2_" prefix

# Display the long format data
print(long_data)

write.csv(long_data, "long_data.csv", row.names = FALSE)

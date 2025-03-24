# Project 1: Energy Analysis

## Objective

The objective of this project was to analyze data between CO2 Emissions per MWh Generation and Energy Source Production throughout 2013-2023 in the United States.  


**Data Preprocessing & Processing**
  
    Datasets:
     
    Kg of Carbon Emissions: https://www.eia.gov/electricity/data/emissions/

    Carbon Emissions (million metric tons): https://www.eia.gov/environment/emissions/state/

    Energy Production: https://www.eia.gov/state/seds/seds-data-complete.php#Production
    
    Tools Used: Spreadsheets, R, SQl
 1. Kg of Carbon Emissions: https://www.eia.gov/electricity/data/emissions/
      
      - **Downloaded** all relevant datasets (`Project1/data/`).
      - **Cleared** Formatting.
      - **Cleaned** the dataset by handling missing values, trimmed whitespaces, removed irrelevant data and outliers.
      - **Merged** datasets from years 2013-2023 using dyplr R (`Project1/notebook/`)
      - **Formatted** data from wide to long for all years and states using tidyr in R (`Project1/notebook/`)
      - **Exported** the table to spreadsheets to delete irrelevant added columns.

    Data now ready for use!
 
 2. Carbon Emissions (million metric tons): https://www.eia.gov/environment/emissions/state/
    Data Limitations: Only had data up until 2022. Could not perform 2023 calculations because of this. 
     
      - **Downloaded** dataset.
      - **Cleared** Formatting.
      - **Cleaned** the dataset by handling missing values, trimmed whitespaces, removed irrelevant data and outliers.
           - for this particular dataset I removed the data for 1970-2012 as it wasn't needed for my analysis.
      - **Converted** from wide to long format using R (`Project1/notebook/`)
    
    Data now ready for use!
 
  3. Energy Production (renewables & total energy, fossil fuels & nuclear): https://www.eia.gov/state/seds/seds-data- 
       complete.php#Production
      - **Downloaded** datasets in btu (renewables & total energy, fossil fuels & nuclear).
      - **Cleared** Formatting.
      - **Cleaned** the dataset by handling missing values, trimmed whitespaces, removed irrelevant data and outliers.
      - **Converted** from wide to long format using R (`Project1/notebook/`)

         - created a generic code to help me with formatting that I can use for all the data in this step.
      - **Created** a new spreadsheet and merged all data into one with column names.

      Data now ready for use!

 
  
   **Analysis**:
   
   Tools Used: SQL & Tableau

   1. **Created** the generic dataset for the analysis using SQL.

       - created a table for Energy Production.
   3. **Converted** all units to the necessary form. 

       - British Thermal Units (btu) to Megawattshour (MWh)
   4. **Aggregated** the data using the SUM and AVG function for all energy resources.
  
       - sum function was used to find the total of all energy resources
     
       - avg function was used to find the average of CO2 emissions per MWh of generation
      
   6. **Grouped** the data:

       - by year to give me the sums of energy production for all states every year.
          
       - by year and state to give me the sums of energy production for each state and year.
     
       - by year to give me the average of CO2 emissions each year.
     
   7. **Imported** my tables to Tableau to begin creating Visualizations.
   8. **Created** a dashboard to showcase:

       - CO2 emissions over time for the past 10 years by each state.

       - Total Energy Resource Distribution by state.

       - CO2 Emissions and Energy Resource Distribution

## Results
   
Analysis helped identify an overall decrease in average CO2 emissions per MWh of electricity generation across all 50 states between 2013-2023. This indicates that we are supplying our increased energy needs with cleaner resources. This is strongly due to a transition in global standards to reduce our carbon footprint. Industries, like renewables, have played a bigger role in our energy supply, while overall coal reliance has been on the downfall.

Some key findings include:
  
  1. Nuclear Energy is still a key contributor to the overall energy needs in the U.S., accounting for roughly 10%.

     - States like Illinois and Virginia mainly rely on nuclear energy as their primary energy source.
  2. Minimum and Maximum States for CO2 Emissions per MWh of Generation:
       
       - Vermont was identified as the state with the lowest CO2 Emission across all years of analysis, mainly due to its energy generation solely from renewables.
       - Wyoming was identified as the state with the highest CO2 Emission across all years of anaylsis, due to its energy generation mainly from coal (71%).
  
  3. On Average the U.S. has decreased its CO2 emissions per MWh of generation by 28% over the last 10 years (2013-2023).

## Files

- `data/`: Contains the dataset used for the analysis.
- `notebooks/`: Jupyter notebooks with code and analysis.

## Conclusion

Between 2013 and 2022, the U.S. demonstrated a significant 28% reduction in average CO2 emissions per MWh of electricity generation, driven by a shift towards cleaner energy sources. While nuclear power remains a key contributor, states like Vermont, relying solely on renewables, achieved the lowest emissions, contrasting sharply with coal-dependent Wyoming's high emissions. This trend reflects a broader global movement towards decarbonization, with renewables gaining prominence and coal declining.


**Further Data Exploration**

1. Next steps in the project would have been analyzing data in the sectors, such as Residential, Commercial, Industrial & Transportation. This would have led to identifying key contributors for CO2 emissions and honing in on cleaner energy alternatives industries are taking to reduce their carbon footprint.

2. Diving deeper into AI and its energy demands.
 
  - The use of AI is increasing and so are its energy needs. The AI industry is quickly becoming the largest energy consumer on the global scale. Larger companies are looking for energy alternatives, that are both reliable and sustainable to power the AI data centers. These alternatives the companies are pioneering for, include investing in renewables and being big proponents for nuclear.

  - Data analysis could lead to looking into companies who are powering AI and where their energy is coming from. This could help identify if companies are maintaining their carbon objectives.
  
  - Data analysis could also lead to forecasting the next 30 years of AI consumption and needed energy production. 

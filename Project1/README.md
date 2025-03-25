# Project 1: Energy Analysis

## Objective

The objective of this project was to analyze data between CO2 Emissions per MWh Generation and Energy Source Production throughout 2013-2023 in the United States.  


### **Data Preprocessing & Processing**
  
    Datasets:
     
    Kg of Carbon Emissions: https://www.eia.gov/electricity/data/emissions/

    Carbon Emissions (million metric tons): https://www.eia.gov/environment/emissions/state/

    Energy Production: https://www.eia.gov/state/seds/seds-data-complete.php#Production
    
    Tools Used: Spreadsheets, R, SQl

   
   
![Workflow Diagram](images/data_validation.png)
    
 
  
   ### **Analysis**:
   
   Tools Used: SQL & Tableau

   1. **Created** the generic dataset and table for the analysis using SQL.
        
  
   2. **Aggregated and Grouped** the data using the SUM and AVG function for all energy resources by year and state. Also, converted British Thermal Units to Megawatthour (MWh) for each energy source. 
  
  ![SQL](images/energy_source_per_year_by_state.PNG)
  ![SQL](images/total_energy_source_production_by_year.PNG)
  ![SQL Results](images/energy_source_per_year_by_state.PNG)  
     
   7. **Imported** my tables to Tableau to begin creating Visualizations.
   8. **Created** a dashboard to showcase:

       - CO2 emissions over time for the past 10 years by each state.

       - Total Energy Resource Distribution by state.

       - CO2 Emissions and Energy Resource Distribution

### Results
   
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

### Conclusion

Between 2013 and 2022, the U.S. demonstrated a significant 28% reduction in average CO2 emissions per MWh of electricity generation, driven by a shift towards cleaner energy sources. While nuclear power remains a key contributor, states like Vermont, relying solely on renewables, achieved the lowest emissions, contrasting sharply with coal-dependent Wyoming's high emissions. This trend reflects a broader global movement towards decarbonization, with renewables gaining prominence and coal declining.


### **Further Data Exploration**

1. Next steps in the project would have been analyzing data in the sectors, such as Residential, Commercial, Industrial & Transportation. This would have led to identifying key contributors for CO2 emissions and honing in on cleaner energy alternatives industries are taking to reduce their carbon footprint.

2. Diving deeper into AI and its energy demands.
 
  - The use of AI is increasing and so are its energy needs. The AI industry is quickly becoming the largest energy consumer on the global scale. Larger companies are looking for energy alternatives, that are both reliable 
    and sustainable to power the AI data centers. These alternatives the companies are pioneering for, include investing in renewables and being big proponents for nuclear.

  - Data analysis could lead to looking into companies who are powering AI and where their energy is coming from. This could help identify if companies are maintaining their carbon objectives.
  
  - Data analysis could also lead to forecasting the next 30 years of AI consumption and needed energy production. 

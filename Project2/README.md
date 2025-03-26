# Project 2: Sleep Health & Wellness

## Business Objective

To identify key lifestyle factors and demographic segments that significantly impact sleep quality, stress levels, and overall wellness within the population represented in the dataset, and to develop actionable recommendations for targeted wellness programs or interventions aimed at improving sleep health and reducing stress.

### Data Preprocessing & Processing

Note: Data was collected from this [Kaggle Dataset](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset)

**Tools Used:** Spreadsheets

![Data Validation Workflow](images/cleaning_data_workflow.png)


### Data Analysis 

**Tools Used:** SQL, R, Tableau

First, I wanted to aggregate the data to find the averages of key health metrics using SQL. 



![Aggregation of Data](images/physical_activity_trends_by_occupation.PNG)



![Aggregation of Data](images/physical_activity_trends_by_occupation_results.PNG)



I then used Tableau for further analysis. 

Using a scatter plot, I plotted average quality of sleep vs. average stress levels by occupation to see if there was any relationship between the two depending on the occupation. Initial thoughts included seeing an inverse relationship, meaning increased quality of sleep led to decreased stress levels. 

![Quality of Sleep vs. Stress Levels](images/avg_quality_of_sleep_v_avg_stress_levels.PNG)

I then plotted average physical activity and quality of sleep. I noticed that increased physical activity generally led to increased quality of sleep.

![Physical Activity and Quality of Sleep](images/physical_activity_vs_quality_of_sleep.PNG)


My thought process shifted then to other physical activity factors, such as heart rate and blood pressure. 

The questions that arose:

1. Does heart rate increase with higher stress levels?
2. Does higher blood pressure indicate higher heart rates?
3. Do heart rate and blood pressure both play a factor in increased stress levels, which can cause poorer quality of sleep?

I believed the best way to answer the first question was to create another scatter plot to see the relationship.

![Avg. Heart Rate vs. Avg. Stress Levels](images/heart_rate_v_stress_levels.PNG)


To answer the second question, I wanted to find out the R value between heart rate and blood pressure. I used R to do so. 

![Pearson's Correlation Coefficient](images/Rcode/r_coefficient_heart_rate_and_blood_pressure.PNG)


### Results

Key takeaways:
1. There is an inverse relationship between average quality of sleep and average stress levels. Meaning as quality of sleep increases the level of stress decreases. R² is 0.79497, representing a reasonably strong relationship between sleep quality and stress levels.

2. There is a moderate positive correlation between average physical activity level and average quality of sleep (in minutes).

    - p-value: 0.0097255
    - R² value: 0.542564
    

4. Heart rate has a weak to moderate positive correlation with both systolic and diastolic blood pressure. This suggests that there's a slight tendency for blood pressure to increase with heart rate, but the relationship is not very strong.

    Pearson's coefficient between heart rate and systolic pressure: 0.294


    Pearson's coefficient between heart rate and diastolic pressure: 0.271


 

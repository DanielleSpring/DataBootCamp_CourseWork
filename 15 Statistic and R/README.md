# MechaCar_Statistical_Analysis

## Purpose
To perform multiple linear regression analysis to predict the miles per gallon (mpg) of MechaCar prototypes by collecting summary statistics on pounds per square inch (PSI) of suspension coils from various manufacturing lots. The summary data will be collected via t-tests to determine if there is any significant differnece from the mean population.  Lastly, provide a comparison summary for vehicle performance of the MechaCar vehicles vs other manufacturers.

### Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype,
the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has
called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For 
each statistical analysis, you’ll write a summary interpretation of the findings.



## Challenge Deliverables:

The assignment consists of a proposal for further statistical study and three technical analysis deliverables:

Deliverable 1: Linear Regression to Predict MPG

Deliverable 2: Summary Statistics on Suspension Coils

Deliverable 3: T-Test on Suspension Coils

Deliverable 4: Design a Study Comparing the MechaCar to the Competition

### Software:
RStudio, R

### Tools/Resources:
MechaCar_mpg.csv, Suspension_Coil.csv, tidyverse, dplyr and MechaCarChallenge.RScript


## **Linear Regression to Predict MPG**

![LinearRegression_Coefficients](https://user-images.githubusercontent.com/89538802/144660306-376ebbe7-65ef-49f9-8248-7fcb289ff0e9.png)

### Linear Regression Summary
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The vehicle length and ground clearance provide a non-random variance to the miles per gallon (mpg) values.  These two coefficients have a significant impact on the miles per gallon (mpg) for the Mechacar protoype.

#### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear regression is not zero because the p-value of 5.35e-11 is lower than the significance level of 0.05. This rejects the null hypothesis.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The Multiple R-Squared value is 0.7149, so the linear model determines approximately. 71% of prototype mpg predictions.

## **Summary Statistics on Suspension Coils**

The MechaCar datasets consists of multiple manufacturing lots.   Summary statistics will be based on the suspension coil prototype pounds per square inch (PSI) and tested using t-tests to determines any significant difference from the population mean. 
The design specifications dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

![TotalSummary](https://user-images.githubusercontent.com/89538802/144658937-2331540e-f114-4c26-8ada-6d42a4cbafb1.PNG)


![LotSummary](https://user-images.githubusercontent.com/89538802/144658955-4bfc8275-f821-4124-a916-f695390486bd.png)

**Question to be answered:** Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall variance is 62.29356 which is lower than the 100 lbs per square inch threshold. Variances for Lots 1 and 2 are 0.9795918 and 7.4693878.  Lot 3 however came in with a variance of 170.2861224, much higher than the 100 lbs per square in threshold.


## T-Tests on Suspension Coils

### Summary T-Test

From this t-test, the sample mean is 1499 with a p-value is about 0.06. We fail to reject the null hypothesis, given that 0.06 is not significantly greater than the level of significance of  0.05.

![OneSampleTTest](https://user-images.githubusercontent.com/89538802/144658989-e2271540-c869-47ec-969e-ff0c32d17bc5.PNG)

### T.Test Summaries for each Manufacturing Lot

The Lot size sampling yielded below results.  Based on the 3 lot testing results, we failed to reject the null hypothesis.

#### Lot 1

Lot 1 has a Mean of 1500, with p-value of 1 

![SubsetLot1](https://user-images.githubusercontent.com/89538802/144659014-5e72b33a-5eb6-41ff-806b-b20ebe98cfb9.PNG)

#### Lot 2

Lot 2 has a Mean of 1500, with p-value of .06 

![SubsetLot2](https://user-images.githubusercontent.com/89538802/144659023-1925a4bb-17fe-45dc-9ad7-4bede54e969f.PNG)


#### Lot 3

Lot 3 has a Mean of 1496, with p-value of .04

![SubsetLot3](https://user-images.githubusercontent.com/89538802/144659032-148dc960-435d-4798-8029-e2fee4f8582a.PNG)


## Study Design: MechaCar vs Competition

### What metric or metrics are you going to test?

Measuring the resale value of the MechaCar , by comparing initial cost versus resale value.


### What is the null hypothesis or alternative hypothesis?

•	Null Hypothesis (Ho): MechaCar is priced correctly based on its resale value.

•	Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on its resale value.

### What statistical test would you use to test the hypothesis? And why?

Our dataset would include multiple years of data, including multiple manufacturing lots.  Given the multitude of samples, we can use the Anova test our hypothesis.

### What data is needed to run the statistical test?

In order to perform the Anova test, we would need the data on the prices of new cars of a similar type and the depreciation over a fixed number of years.


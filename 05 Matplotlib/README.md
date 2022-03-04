# PyBer_Analysis

## **Background**
V. Isualize has given you and Omar a brand-new assignment. Using your Python skills and knowledge of Pandas, you’ll create a summary DataFrame of the ride-sharing data by city type. Then, using Pandas and Matplotlib, you’ll create a multiple-line graph that shows the total weekly fares for each city type. Finally, you’ll submit a written report that summarizes how the data differs by city type and how those differences can be used by decision-makers at PyBer.

### **Data Source:** 
city_data.csv, PyBer_ride_data_csv, ride_data.csv

### **Software:**
Python 3.7.10 , Jupyter Notebook

## **Overview of the analysis:**
The purpose of the analysis is to gain insights on how to help improve access to ride-sharing services and determine affordability for underserved neighborhoods.

## **Results:**

### Ride Sharing Data by City Type Summary
<img width="457" alt="PyBer_Summary" src="https://user-images.githubusercontent.com/89538802/134794128-2fd9c52c-66cd-45b8-82d2-0b67315a54ec.PNG">

Analysis shows that while urban ride sharing represents 62.7% of all fares generated,  the key driver for this large percentage is volume of riders and available drivers in urban centres.   The average fare per ride in Urban centres is $24.53 which is 29.2% ($10.09) lower than that of Rural and 20.8% ($6.44) than that of Suburban fares. 


![PyBer_fare_summary](https://user-images.githubusercontent.com/89538802/135034992-834438c3-a22f-4bee-8770-a707dfb51343.png)



## **Summary:**

Based on the results, below are three business recommendations to the CEO for addressing any disparities among the city types.
1. Further exploritory data and a longer time span (ideally 12-18 months) is needed to assist in understanding the business drivers for more concrete insights on the disparities amoung city types such as:

        *  kilometres/ time spent driving per ride
        *  passengers per ride
        *  weather at time per ride
        *  population per city type
        *  avg household income/ disposable income
        *  number of cars on the road per city type
        *  competitors per city type/ alternative public transportation means per city type
        
2. Assuming that a key differenciator between city types is physical distance driven, urban centres are likely far shorter than those of suburban and even more so than rural centers.  Potential opporunity to charge higher premium $/km on shorter distances and a lower $/km on longer distances.  This could increase the avg far per ride in urban locations, while making fares more attractive/ affordable in rural locations
3. Assuming that there is likely greater competition for ride sharing or alternative public transportation readily available in urban/subuarn centres than rural, propose pilot project focussing on the top 10 fare generating cities by:

              * Increasing available drivers in centers with lower driver count to increase ride opportunities
              * Review where driver volumes are greatly exceeding ride volumes to reduce competition amoungs PyBer drivers.  This could be accomplished with shift or territory balancing.
              * marketing campaign to increase Pyber ride share awareness; offer incentives to increase ridership especially in suburan center


<img width="440" alt="Top_Ten_Cities" src="https://user-images.githubusercontent.com/89538802/135047497-83a5e333-4123-41d9-9d28-2671a4e44f73.PNG">



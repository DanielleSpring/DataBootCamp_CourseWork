# **Surfs Up: Statistical Analysis**


## **Overview of the analysis:**

### Background

W. Avy would like more information about temperature trends before opening the surf shop. Specifically, he wants temperature data for the months of June and December in Oahu, in order to determine if the surf and ice cream shop business is sustainable year-round.

### Tools/Resources/Software:
PostgreSQL, pgAdmin, Python 3.7.10 , Jupyter Notebook, Visual Studio Code Version: 1.60.0, hawaii.sqlite, Flask

Explain the purpose of this analysis.


## **Results:**
The weather is nice and moderate year-round.  Using the months of June and December's weather patterns, the data shows that weather patterns are similar throughout the year.  Listed below are the statistical details for both temperture and percipitation for the months of June and December.


<img width="368" alt="Stats" src="https://user-images.githubusercontent.com/89538802/138338483-e947ae1d-20a5-4900-9f94-56f76f31bccc.PNG">


Stats of note are:
1) Average temperatures in June is 75 degrees F, averaging 4% higher than December average temperature of 71 degrees F.
2) While December can experience lower temperatures than June, there is only a Temperature range from 64 to 85 degrees F in June, temperature ranges from 56% to 83 degrees F in December 
3) Average percipitation in June is .14 inches, averaging .08 inches lower than December average percipiation of .22 inches.



## **Summary:**
Comparing the two different months with these descriptive statistics suggests the average temperatures are fairly similar between the summer (June) month and winter (December) month. Temperature ranges for June (64-85 degree F) are slightly warmer as compared to Decemeber temperature ranges (56-83 degree F). December see higher precipitation levels, which could impact surfing and icecream sales.

Besides temperature and percipiation, it would be recommended to research the additional weather factors: sun shine, humidity, clouds, wind for potenital affects on ice cream sales and surfing.


Two Additional queries performed to gather more weather data for June and December are:

Creating percipiation statistics:

<img width="541" alt="Percipiation_Stats" src="https://user-images.githubusercontent.com/89538802/138338511-7fa07fd1-f3b6-4772-ae60-59833026255b.PNG">

Merging temperature and percipitation statistics:

<img width="717" alt="Temp_Perc_Stat_summary" src="https://user-images.githubusercontent.com/89538802/138338193-62790cad-a7ca-43ba-816d-9d5bd17df698.PNG">


# **Amazon_Vine_Analysis**

## Purpose

The purpose of this challenge is to use PySpark to perform the ETL process to perform the followi extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Using SQL determine if there is any bias toward favorable reviews from Vine members in the Toy Reviews dataset.

### Background
The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review. The challenge assignment is to analyze Amazon reviews written by members of the paid Amazon Vine program.  

There are approximately 50 datasets, each one contains reviews of a specific product, from clothing apparel to wireless products. For the purpose of thie challenge the following dataset is being used:

https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz  

PySpark will be used to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. The dataset will be analyzed using SQL to determine if there is any bias towards favorite reviews from Vine members and provide a summary analysis to be submitted to Sellby stakeholders.

## Challenge Deliverables:

This assignment consists of a written report and two technical analysis deliverables:

Deliverable 1: Perform ETL on Amazon Product Reviews

Deliverable 2: Determine Bias of Vine Reviews

Deliverable 3: A Written Report on the Analysis (README.md)

### Software/Tools/Resources:
SQL, Colab, pgAdmin 4, PySpark, Pandas, AWS RDS instance, Challenge_schema.sql, Amazon_Reviews_ETL_starter_code.ipynb, 
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Toys_v1_00.tsv.gz 


## **Results:**

Using AWS, the results from the Amazon toy reviews were loaded into a pgAdmin database creating 4 tables to be used for analysis.

![append](https://user-images.githubusercontent.com/89538802/145538362-8bab7ad5-1951-4c27-9232-59a854c8c312.png)


The dataset was cleaned to retrieve all rows where total_votes are >= 20, to avoid any potential division by zero errors, resulting in 70,474 records 

<img width="585" alt="Total_votesGreaterThanEqualTo20" src="https://user-images.githubusercontent.com/89538802/145332910-86964bfb-a1e0-48b2-bf73-54c44ec9db96.PNG">

The dataset is further cleansed by only retreiving those records where helpful_votes are divided by total_votes is equal to or greater than 50%, resulting in 63,294 records.

<img width="343" alt="GreaterThan50" src="https://user-images.githubusercontent.com/89538802/145335042-b0461412-93ff-4063-ac91-30782ebcc854.PNG">

### -How many Vine reviews and non-Vine reviews were there?
There are 1266 paid vine reviews, in comparision to 62,028 non-paid vine reviews.

#### Total Vine Reviews (Paid)

<img width="378" alt="VinePaid" src="https://user-images.githubusercontent.com/89538802/145332057-bf9c6fc8-08a5-412c-b079-d68e73e291de.PNG">

#### Total Vine Reviews (Unpaid)

<img width="391" alt="VineUnPaid" src="https://user-images.githubusercontent.com/89538802/145332148-e4a3b66c-2186-4ca4-8de7-44ea41364cd5.PNG">


### -How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars? What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

The filtered 5 star review dataset has a total of 30,414 reviews of which 29,982 are non-paid vine reviews, as opposed to, 432 paid vine reviews.  48.3% of vine reviews are written by non-paying members. A 34.1% percentage are actually written by paying members.


![Corrected_TotalNumber5StarReviews](https://user-images.githubusercontent.com/89538802/146613898-695ff732-267e-4962-8bf9-c0d6fe3fab4d.PNG)

![Corrected_PercentagePaid5Star](https://user-images.githubusercontent.com/89538802/146613917-6b78c31a-06b3-4d57-9976-e15c84fcc300.png)

![Corrected_PercentageUnPaid5Star](https://user-images.githubusercontent.com/89538802/146613925-f0c366c6-2a9f-4b32-aa29-64c45642e2f6.png)


## **Summary:**
Based on the result of vine vs non-vine review counts, results would suggest negative bias in the toys review dataset.  Further analysis that could be done to see if 5 star data is consistent across customers and or products for paid and non-paid reviews.  Additionally, review of the statistical distribution (mean, median and mode) of the star rating for the Vine and non-Vine reviews may offer further insight.

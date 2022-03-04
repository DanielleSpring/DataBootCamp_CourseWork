CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

--Delete tables for testing purposes
DELETE FROM review_id_table;
DELETE FROM products_table;
DELETE FROM customers_table;
DELETE FROM vine_table;


--Review that tables were created and data appended
SELECT * FROM review_id_table;
SELECT * FROM products_table;
SELECT * FROM customers_table;
SELECT * FROM vine_table;


-- *****Deliverable 2*****

--STEP 1
--Filter the data and create a new DataFrame or table to retrieve all the rows where the 
--total_votes count is equal to or greater than 20 to pick reviews that are more likely to 
--be helpful and to avoid having division by zero errors later on
SELECT *
INTO filtered_vine_table
FROM vine_table
WHERE total_votes >= 20;
 
--confirm table creation
SELECT COUNT(*) FROM filtered_vine_table;


--STEP 2
--Filter the new DataFrame or table created in Step 1 and create a new DataFrame or table to retrieve 
--all the rows where the number of helpful_votes divided by total_votes is equal to or greater than 50%.
--If you use the SQL option below, you’ll need to cast your columns as floats using WHERE CAST
--(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5.

SELECT * 
INTO filtered2_vine_table
FROM filtered_vine_table 
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

--confirm table creation
SELECT COUNT(*) FROM filtered2_vine_table;


--STEP 3
--Filter the DataFrame or table created in Step 2, and create a new DataFrame or table that retrieves all
--the rows where a review was written as part of the Vine program (paid), vine == 'Y'

SELECT *
INTO paid_reviews_table
FROM filtered2_vine_table
WHERE vine = ('Y');

--confirm table creation
SELECT * FROM paid_reviews_table;
--count paid vine
SELECT COUNT(review_id) FROM paid_reviews_table;

--STEP 4
--Repeat Step 3, but this time retrieve all the rows where the review was not part of the Vine program
--(unpaid), vine == 'N'.

SELECT *
INTO unpaid_reviews_table
FROM filtered2_vine_table
WHERE vine = ('N');

--Confirm table creation
SELECT * FROM unpaid_reviews_table
--count unpaid vine
SELECT COUNT(review_id) FROM unpaid_reviews_table;


--STEP 5
--Determine the total number of reviews, the number of 5-star reviews, and the percentage of 5-star 
--reviews for the two types of review (paid vs unpaid).

--Total Number of Reviews
SELECT COUNT(review_id)
INTO total_count
--FROM vine_table; CORRECTED
FROM filtered2_vine_table



--Review total_count
SELECT * FROM total_count;

--Total Number of 5star reviews
--SELECT vine, COUNT(review_id) FROM vine_table...CORRECTED
SELECT vine, COUNT(review_id) FROM filtered2_vine_table
WHERE star_rating = 5
GROUP BY vine;

--% of 5 star review for both paid and unpaid reviews---CORRECTED
--SELECT vine, COUNT(review_id)*100/sum(count(*)) OVER() AS Percentage

--% of 5 star review for paid vine reviews
SELECT vine, COUNT(case when star_rating = 5 then 1 end)*100/sum(COUNT(*)) OVER () AS Percentage
FROM paid_reviews_table 
--WHERE star_rating = 5
GROUP BY vine;


--% of 5 star review for unpaid vine reviews
SELECT vine, COUNT(case when star_rating = 5 then 1 end)*100/sum(COUNT(*)) OVER () AS Percentage
from unpaid_reviews_table
GROUP By vine; 


 
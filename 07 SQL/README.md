# **Pewlett-Hackard-Analysis: "Silver Tsunami"**

## **Overview of the analysis:**

### **Background:**
Pewlett Hackard (PH) is a large company that has fallen a bit behind in the HR database department. The challenge is to data model, create a database 
with tables using csv files and create queries to support analysis for succession planning at the company.

### **Purpose:**

To provide a summary analysis of current employee's reaching retirement age and plan for succession by identifying employees who are eligible to 
participate in a mentorship program. 

### **Tools/Resources:**
PostgreSQL, pgAdmin, departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv, Entity Relationship Diagram (ERD)

## **Results:**

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

1) PH currently employs 240,124 employees with an average age of 62.  

1) Identifying retire eligible employees as having birth years 1952-1955, this  are eligible for retirement, this equates to a total of 72,458 
employees/roles to be vacant due to retirement.  For a rapidly aging workforce this represents 30.2% of the current active employees. 
Hiring and succession planning needs to become a priority.

2) Of the 72,458 employees anticipated to retire, 75% will vacate senior leadership or managment level roles.

<img width="233" alt="Employees to Retire by Title" src="https://user-images.githubusercontent.com/89538802/137078819-b9a452da-9270-431f-b201-d3b06a741e93.PNG">

3) Hiring practices have seen a dramatic decline in filling new positions or existing roles


<img width="245" alt="Rolls Filled by Year" src="https://user-images.githubusercontent.com/89538802/137078942-4fc65f7d-beef-40b2-a0fa-3a02d589d686.PNG">


4) Based on the eligibilty criteria of employees with a birth date in 1965, there are only 1549 eligible employees for the mentorship program; this means there is 1 trainee per circa every 47 retiring mentors. 

## **Summary:**

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**
A total of 72,458 roles will need to be fulfilled.  Assuming that the vacancies will be staggered beginning with the oldest employees born in 1952,  and a 1:1 fulfillment of vacating roles, there will be 9687 roles to be filled as the "silver tsumani" begins.

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
Yes, there are amble qualified "retiree" to mentor.   PH must focus on aggressively hiring to meet the vacant roles demand and promoting from lower ranks.

Mentorship Eligible Titles

![MentorshipTitles](https://user-images.githubusercontent.com/89538802/137083200-0a747f14-2bbc-47b0-8f1b-e4a1b3c60449.png)


Retiring Eligible Titles

![RetireeTitles](https://user-images.githubusercontent.com/89538802/137083967-7ff6aa67-1ee6-4365-8e81-6d00854cec72.png)


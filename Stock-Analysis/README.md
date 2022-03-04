#**Stock-Analysis**

##**Overview**
Provide a user friendly excel workbook with button controls allowing user to select a specific year for all stock tickers to analyze stock performance.

###Background
Steve enjoys the ease of the original workbook created for him to analyze the DQ stocks. He would like to use this workbook to analyze all stocks; however, the current code is not designed to handle the volume of data.  In order to use this workbook more effectively, the current VBA code will need to be redesigned/ refactored to run faster and more efficiently with a larger dataset

The workbook must be able to perform the following:
*Yearly data for all stocks will be downloaded into the excel workbook utilitzing VBA in order to automate ticker performance analysis. 
*The automated script provides the user with a summary table of all tickers within the dataset, total daily volumes and % return
*The summary table is conditionally formatted to highlight those tickers whose performance was >0 in green and those whose performace was <=0 in red
*The automated script is executed by user inputted year

###User Instructions
  1. The user will download the yearly stock data into excel and copy dataset into a new worksheet
  2. The user will rename the new worksheet with the proper year in format "YYYY"
  3. The user will use the All Stock Analysis workseet to review stocks by year and perform the following:
    * The user will first clear the current worksheet of previous displayed data by clicking on "Clear Worksheet" button
    * The user will then click on "Run Analysis for All Stocks" button which will prompt user to enter a year for review.


##**Results**
### Compare stock performance between 2017 and 2018

In comparing both 2017 and 2018 stock performance, Steven is able to analyze **manually** that year over year the average return overall decreased by 9%. Of the 12 ticker stocks being reviewed 2 saw positive returns year over year. These were ENPH and RUN.

![image](https://user-images.githubusercontent.com/89538802/132935402-5cbb7884-748b-4f13-b0db-80485dcc0bce.png)

The worksheet provided the below outputs for 2017 and 2018 **separately**.  Tables have been displayed side by side for ease of review:
![image](https://user-images.githubusercontent.com/89538802/132935673-fe887b46-b9ed-4e44-b7ca-15bbbd0a51f7.png)

### Compare original script and refactored script execution times
From a worksheet performance, Steven may or may not have noticed that the refactored VBA code run times perform 85% faster than those of the original VBA code run time.  
The improved exection of the VBA script was accomplished through the use of a ticker index.   This allows the script to remove the original nested IF statement to loop through both rows and columns and employ a cleaner script with one simpler IF statement to determine StartingPrices and EndingPrices per ticker index.  See below for output screenshots of the original run times and below the refactored run times:

![image](https://user-images.githubusercontent.com/89538802/132935766-1d2caeff-ec5c-4971-be18-473baf1376d6.png)

####Original VBA script with nested IF statement

![image](https://user-images.githubusercontent.com/89538802/132934096-f0b79d3b-619f-4319-919e-4b50db6e68d9.png)

####Refactored VBA script with index

![image](https://user-images.githubusercontent.com/89538802/132934146-79a0b169-d471-422c-af64-67faae2f75af.png)

##**Summary**

**1. What are the advantages or disadvantages of refactoring code?**
Advantages of refactored code include:

*The refactored code is improved and should perform more efficient and faster
*It should be cleaner and easier to read, ie. removal of nested loops

Disadvantages of refactoring code include:

*long VBA scripts will likely have the same code in multiple sections.  In the process of refactoring, changing all necessary code is prone to human error and result in missed sections resulting in potentially 'breaking' the code rather than improving.  
*Best practice for refactoring is to do so in bite size changes, test and repeat.  This can be time consuming. 


**2. How do these pros and cons apply to refactoring the original VBA script?**

The pros to refactoring the original VBA code for the Stock Analysis is its performance.  The code runs quicker by 85%. As for the code, it was simplier to read vs the original.  Steven may or may not have noticed as the current dataset performed in seconds in both the original code and refactored code.  With greater volumes of data, efficiency and script speed will play a vital role in the user experience.  

As for the cons, Steve still needs to manually download stock data and create the "year" dataset, allowing him to then review stocks one year at a time. The focus of the refactoring in this excercise was simply efficiency of script execution; however, from a user experience, the script would have been enhanced 
  1. if it enabled the user the ability to select multiple years for review for years for year over year trending. 
  2. hard codubg the ticker variables means that this script will likely need to revised with every new dataset input, as new stock tickers will appear and therefore be missed from the current script.   

######Deliverable 1#######################

#Step3
#Import tidyverse dependency
library(tidyverse)

#Step4
#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_df<-read.csv(file='MechaCar_mpg.csv')


#Step5
#Perform linear regression using the lm() function. In the lm() function, pass in all six variables 
#(i.e., columns), and add the dataframe you created in Step 4 as the data parameter.


####create a linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_df) #create linear model


#Step6
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
#determine our p-value and our r-squared value for a simple linear regression model
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_df)) #summarize linear model

#####Deliverable 2##########################
#Step2
#import and read in the Suspension_Coil.csv file as a table
SuspensionCoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Step3
#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard 
#deviation of the suspension coil's PSI column

total_summary <- SuspensionCoil_table %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep')
#view(total_summary)

#Step4
#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() 
#functions to group each manufacturing lot by the mean, median, variance, and standard deviation of 
#the suspension coil's PSI column.
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), StdDev=sd(PSI), .groups= 'keep')#create lot summary table
#view(lot_summary)

####Deliverable 3###########################
#Step1
#using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(SuspensionCoil_table$PSI,mu=1500) 


#Step2
#three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from 
#the population mean of 1,500 pounds per square inch.
t.test(subset(SuspensionCoil_table$PSI,SuspensionCoil_table$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(SuspensionCoil_table$PSI,SuspensionCoil_table$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(SuspensionCoil_table$PSI,SuspensionCoil_table$Manufacturing_Lot=='Lot3'),mu=1500)


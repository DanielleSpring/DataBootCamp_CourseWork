# **Credit_Risk_Analysis**
## **Overview of the analysis:**
Credit-risk analysis is difficult to predict.  Datasets tend to be imbalanced, as good loans easily outnumber risky loans.  In order to identify best machine learning model to employ, different techniques will trained and evaluated with unbalanced classes.  To do this, imbalanced-learn and scikit-learn libraries will be used to build and evaluate models using resampling, in an effort to best predict credit risk.  

### **Purpose**
The purpose of this challenge is to evaluate the Superivised Machine Learning classification accuracy of various models. This is done through an evaluation procedure and analysis of various metrics to best determine a models performance.  The objective is to determine if we predict a risky loan application for the LendingClub.

#### Evaluation Procedure Steps:
1) Preprocess the LendingClub dataset using get_dummies function
2) Define X (features...column headers of table) and y (target... the loan status)
3) Use train_test_split to create testing datasets and training datasets using X and y
4) Train the classification model(LogisticsRegression, BalancedRandomForestClassifier OR EasyEnsembleClassifier)
5) Model is fitted to the classification model to learn the relationship between x_train and y_train datasets
6) Establish class predictions for testing sets to the predict method of the fitted model.
7) Calculate the classification accuracy score -> % of correct predictions in y_pred
8) Create a Confustion Matrix
9) Display an Imbalanced Classification Report

#### Evalution Metrics:
Evaluation metrics will be used to quantity the model's performance.  Sklearn metric will be imported.
1) Create a confusion maxtrix -> a table that describes the performance of a classification model. A tally of the two types of correct or incorrect predictions it can make.
    
    **Instructions on how to understand a confusion matrix:**
    
        The credit/risk analysis data provided for LendingClub is a binary problem (0/1)
        - True Postitives (TP): correctly predicts risky loan
        - True Negatives (TN): correctly predicts NOT a risky loan
        - False Postivies (FP): incorrectly predicts a risky loan
        - False Negatives (FN): incorrectly predicts NOT a risky loan
        
  ![ConfusionMatrix](https://user-images.githubusercontent.com/89538802/146868090-f82a2296-727b-4200-912d-5bc9f9611982.png)

     
2) Print an Imbalance Classification Report -> A collection of different metrics

      **Instructions on how to understand an Imbalance Classification Report:**
      
      ![ImbalancedClassificationReport](https://user-images.githubusercontent.com/89538802/146595541-7cca4d52-e1df-43da-86c2-5244ef3f7727.png)
      
        Key Metrics of note are:
        
       - Precision (Pre)
            - when positives are predicted, how often is the prediction incorrect? A model that delivers no false positivies has a precision of 1.0
            - Calculated as: TP/float(TP +FP)
       - Sensitivity (Rec)
            - how sensitive the classifier is detecting postitive instances/ when actual value is postivie, how often is the predition correct?
            - ie. True Positive Rate (also referred to as **Recall** ) You will want to maximize
            - Calculated as : TP/ float(TP+FN)
       - Specificity (Spe)
            - when the actual value is negative, how often is the predictions correct? How selective the classifier is in predicting positive. You will want to maximize
            - Calculated as: TN/ float(TN+FP).  Best possible value is 1.
       - F1 Score (F1)
           - a combination of precision and recall.  A perfect model achieves a score of 1.0
           - Calculated as : 2(Precision * Sensitivity)/(Precision + Sensitivity)
       - Support (Sup)
           - number of samples each metric was calculated on
               
   
### **Challenge Deliverables:**

 - Deliverable 1: Use Resampling Models to Predict Credit Risk
 - Deliverable 2: Use the SMOTEENN Algorithm to Predict Credit Risk
 - Deliverable 3: Use Ensemble Classifiers to Predict Credit Risk
 - Deliverable 4: A Written Report on the Credit Risk Analysis (README.md)

### **Resources:**

- Software: Jupyter Notebook
- Libraries: numpy, pandas, imbalanced-learn and scikit-learn
- Tools/Resources:  LoanStats_2019Q1.csv, credit_risk_resampling_starter_code.ipynb, credit_risk_ensemble_starter_code.ipynb,  Module-17-Challenge-Resources.zip


## **Results:**

The LendingClub dataset loaded presented with 68,870 loan applications as low risk and 347 loan applications as high risk. A total of 68,817 records for review.

![ClassDistribution](https://user-images.githubusercontent.com/89538802/146594470-b22b0a4a-89f2-45da-8780-e1c1fc94260e.png)

To evaluate all Over and Under Sampling techniques the following test (25%) and training (75%) datasets were created:

X_train contains 51,612 rows with 95 columns

X_test contains 17,205 rows with 95 columns

y_train contains 51,612 rows with 1 column

y_test contains 17, 205 rows with1 column

![Train_Test_Resampling](https://user-images.githubusercontent.com/89538802/146594901-c52cf4fc-43ab-47d0-b145-4d6b1e160c07.PNG)

These training and testing datasets were applied to the following techniques to evaluate models with unbalanced classes.  Listed below are 6 models with their corresponding results.

### **Oversampling**

#### **Naive Random Oversampling**

<img width="505" alt="RandomOverSamplingCM" src="https://user-images.githubusercontent.com/89538802/146570124-224d5830-0e79-4046-8fe5-1ea812b9c2c4.PNG">

<img width="700" alt="RandomOverSampingSummary" src="https://user-images.githubusercontent.com/89538802/146570140-80581954-d033-4d71-9ebb-084bb2854689.PNG">

    **Noted Performance Observation using Naive Random Oversampling:**  
    Naive RandomOversampling demonstrated a recall of 62% for accurately predicting a "risky" loan application, a 1% precision for incorrectly predciting a "risky" and a   balanced accuracy score of 63.7%.

#### **SMOTE Oversampling**

![SMOTECM](https://user-images.githubusercontent.com/89538802/146829892-550a2a41-177a-40de-9487-83ad74109bb5.PNG)

<img width="669" alt="SMOTESummary" src="https://user-images.githubusercontent.com/89538802/146570197-cbe4b127-afa7-47ad-8b8b-65842eccbfb5.PNG">

   **Noted Performance Observation using SMOTE Oversampling:**
    SMOTE saw no notable change in balanced accuracy score, precision nor recall in comparision to the Random Oversampling.  It did;however, demonstrate a decrease of 1% in specificity performance.

### **Undersampling**

#### **ClusterCentroids**

![UnderSamplingCM](https://user-images.githubusercontent.com/89538802/146830748-85f35996-0928-413a-b2a5-61f5ef431413.PNG)

![UnderSamplingSummary](https://user-images.githubusercontent.com/89538802/146830953-52111b13-0500-4e3b-afcb-aaa1ceef917c.PNG)

   **Noted Performance Observation using ClusterCentroids:**
    ClusterCentroids recall score of 71% outperformed both Naive RandomSampling and SMOTE recall scores of 62%; however, the balanced accuracy scorecard dropped significantly from 63% to 53% (- 10%)
    
    
### **Combination (Over and Under) Sampling**

#### **SMOTEENN**

![CombinationSMOTEENN_CM](https://user-images.githubusercontent.com/89538802/146832981-d1fd0175-7eee-4327-80c1-4ccc42594ef0.PNG)

![CombinationSMOTEENN_Summary](https://user-images.githubusercontent.com/89538802/146833256-84200943-e840-4d92-a5b6-9e25c89c50d2.PNG)


    **Noted Performance Observation using SMOTEENN:**
    SMOTEENN improved the recall score of Naive Random Sampling/SMOTE by achieving a 65.3% balanced accuracy score (+2-3%) while matching that of the CusterCentroids recall score of 71% (+9%).
  

### **Ensemble Learners**

#### **Balanced Random Forest Classifier**

![RandomForecastCM](https://user-images.githubusercontent.com/89538802/146840083-cf2f3478-0720-4c21-bba7-1e2496f9efaf.PNG)


![RandomForestSummary](https://user-images.githubusercontent.com/89538802/146840092-b3909534-fc88-4166-ae9c-058ecc551611.PNG)


##### Features:

<img width="661" alt="FeaturesListSorted" src="https://user-images.githubusercontent.com/89538802/146839638-f051e71e-a786-44d8-9ef9-a214804ac02b.PNG">


    **Noted Performance Observation using Balanced Random Forest Classifier:**
    The use of Balanced Random Forest Classifiers improves the balanced accuracy score due to its focus on important features.  Model improvements can be seen in various metrics:
    
    -balanced accuracy score = 78.9% (+ 13.6% over SMOTEENN scoring at 65.3%)
    -precision = 3% (+2% increase over all other previous models scoring 1%)
    -recall high risk = 70% for high risk (comparible to ClusterCentroids and SMOTEENN scoring high risk at 71%)
    -recall low risk= 87% (significant improvement from Niave Random Sampling (65%) & SMOTE (64%)
    -specificity = 87% (significatn improvement over Naive Random Sampling with 65% for high risk)
    -F1 = 6% (+4% improvement over previous models scoring 2%)
   

#### **Easy Ensemble AdaBoost Classifier**

<img width="418" alt="EasyEnsembleCM" src="https://user-images.githubusercontent.com/89538802/146570347-adf5f472-2324-4a16-8111-4c187247bbc0.PNG">

<img width="701" alt="EasyEnsembleSummary" src="https://user-images.githubusercontent.com/89538802/146570370-ca7a99c3-e9b6-4135-aebe-097f7f09b91a.PNG">

   **Noted Performance Observation using Easy Ensemble AdaBoost Classifier:**
    The Easy Ensemble Adaboost classifer see further improvement to the Random Forecast Classifer. 
    Model improvements can be seen in various metrics:
    
    -balanced accuracy score = 93.2% ( +14.3% improvement -- best model performance of the 6 models)
    -precision = 9% (+6% improvement -- best model performance of all 6 models)
    -recall = 92% (+22% improvement -- best model performance of all 6 models)
    -specificity = 94% (+7% improvement -- best model performance of all 6 models)
    -F1 = 16% (+10% improvement -- best model performance of all 6 models)
  
## **Summary:**
The objective of this analysis is to determine if we predict a risky loan application for the LendingClub. Based on testing and corresponding results of the 6 models reviewed above, the best suited model was the Easy Ensemble AdaBoost Classifier Ensemble Learners to detect high risk loans.   Our ideal model will place greater importance optimizing the sensitivity or recall score. The rational being that false negatives may result in a lost customer/loan applicant, hense a loss in profit/business for the LendingClub.  LendingClub is likely more forgiving on false positives, as identified "risky" loan applications can be reviewed further and resolved be resolved without loosing a sale, ie. loan. 

A review of the 6 models tested highlighted the following:

**Which model had the best balanced accuracy score?**
The model with the best balanced accuracy score is the Easy Ensemble AdaBoost Classifier Ensemble Learners which achieved a 93.2% score.  This out performed the Balanced Random Forest Classifier by 14.3%, in addition to, significantly out performed the over/under sampling LinearRegression classifers which had accuracy scores ranging from 53% to 65%.

**Which model had the best recall score?**
The Easy Ensemble AdaBoost Classifier Ensemble Learners achieved the greatest score of 93%.

**What are the top three features?**
The top 3 features of significance were:

- total_rec_prncp: (0.07876809003486353)
- total_pymnt: (0.05883806887524815)
- total_pymnt_inv: (0.05625613759225244)


The recommendation would be for LendingClub to deploy an Easy Ensemble AdaBoost Classifier Ensemble Learners model for detecting risky loan applications.

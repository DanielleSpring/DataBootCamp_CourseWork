# **Cryptocurrencies**


## Background:
As an adviser to Accountability Accounting, a prominent investment bank, you are requested to create report which includes what cryptocurrencies are on the trading market, and recommend groupings to create a classification system for this new investment. 

## **Purpose:**
To use unsupervised machine learning and a clustering algorithm to group cryptocurrencies and provide visualization aids to share findings to the board. 

### **Resources:**
Software: Jupyter Notebook
Libraries: pandas, hvplots.pandas, ployly.express, and scikit-learn
Tools/Resources: crypto_data.csv

## **Challenge Deliverables:**

### Deliverable 1: Preprocessing the Data for PCA
The following preprocessing steps have been performed on the crypto_df DataFrame 
- All cryptocurrencies that are not being traded are removed 
- The IsTrading column is dropped 
- All cryptocurrencies with at least one null value are dropped 
- All the rows that do not have coins being mined are removed 
- The CoinName column is dropped from the crypto_df DataFrame AND all the following have been completed. 
- A new DataFrame is created that stores the names of all cryptocurrencies from the CoinName column and has the index from the crypto_df DataFrame  

  ![Del1_CryptoDF](https://user-images.githubusercontent.com/89538802/147182006-3e7b57e4-afe9-4fbe-91b0-a71b0cc949b9.PNG)

- The get_dummies() method is used to create variables for all of the text features, which are then stored in a new DataFrame, X 
- The features from the X DataFrame have been standardized using the StandardScaler fit_transform() function

### Deliverable 2: Reducing Data Dimensions Using PCA
- The PCA algorithm reduces the dimensions of the X DataFrame down to three principal components. 
- The pcs_df DataFrame is created and, all the following are completed: 
- The pcs_df DataFrame has three columns; PC 1, PC 2, and PC 3 
- The pcs_df DataFrame uses the index from the crypto_df DataFrame

  ![Del2_PCSDF](https://user-images.githubusercontent.com/89538802/147182152-f02ca546-a231-49c6-a247-8d0f9c34d3ff.png)


### Deliverable 3: Clustering Cryptocurrencies Using K-means
- An Elbow Curve is created using hvPlot to find the best value for K

![ElbowCurve](https://user-images.githubusercontent.com/89538802/147182588-c7f282cb-103e-4652-8946-48a3fc00f460.PNG)

- Predictions are made on the K clusters of the cryptocurrencies’ data 
- A new DataFrame is created with the same index as the crypto_df DataFrame and has NINE columns

  ![Del3_NewCryptoDf](https://user-images.githubusercontent.com/89538802/147182746-dfc2e01e-8c6d-4888-9857-75f6a723be02.png)

### Deliverable 4: Visualizing Cryptocurrencies Results
- The clusters are plotted using a 3D-Scatter and each data point shows the CoinName and Algorithm on hover 

  ![Del4_3Dclusters](https://user-images.githubusercontent.com/89538802/147182899-69cc53af-9db0-4014-a44f-4ade304da712.png)

- A table with tradable cryptocurrencies is created using the hvplot.table() function

  ![Del4_Table](https://user-images.githubusercontent.com/89538802/147182977-7dc6e80e-7a7c-4f56-9008-c90983ca623a.png)

- The total number of tradable cryptocurrencies is printed
- A DataFrame is created that contains the clustered_df DataFrame index, the scaled data, and the “CoinName” and “Class” columns
- A hvplot scatter plot is created where the X-axis is “TotalCoinsMined”, the Y-axis is “TotalCoinSupply”, and the data is ordered by “Class”, and when you hover over the the data it shows the “CoinName”

  ![Del4_scatterplot](https://user-images.githubusercontent.com/89538802/147183090-929f16f7-b690-428c-be7f-46d758fea6c0.png)







# Customer Segmentation with R & Shiny

Web application for customer segmentation created using R & Shiny; deployed on shinyapps.io. Link to the live app is below. 

## Business Case 

Customer segmentation is a high-opportunity technique that aims at identifying similar customers to better target those groups and increase revenue. In this case, the intent is to identify the cohort of customers to target based on thier purchasing behavior. 

## The Data

For this case, I utilized open available data on Kaggle. The data can be found [here](https://www.kaggle.com/jr2ngb/superstore-data). This dataset contains 4 years of retail data. It can also be accessed in this repo in the /data directory. 

## Methodology

Exploratory Data Analysis was condudted offline, and it is not included in this codebase. 

I utilized the highly-effective RFM (Recency, Frequency, and Monetary) components of the customers to generate features from which to generate clusters. Recency identifies how recently the customer has purchased from the retailer. Frequency identifies how often the customer purchases from the retailer. Lastly, the monetary component identifies how much money the customer spends at the retailer. 

After generating these features, I utilized k-means clustering to segment the customers. 

## Insights 

- Utilizing 3 clusters, there is a clear separation between high, mid, and low value customers. Less than 30% of customers would be considered high-value. 
- With the high proportion of customers that purchased recently, but have not ordered again, they are the prime targets for rengagement strategies. By targeting these customers, they could transition into the mid and high value clusters. 
- There is a huge opportunity to leverage this analysis to predict a customer's propensity to churn, or their propensity to buy again. 

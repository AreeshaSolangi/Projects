# Customer Segmentation Using RFM Analysis

For this project, I performed customer segmentation using **RFM (Recency, Frequency, Monetary)** analysis to identify valuable and at-risk customers. The data comes from the [UCI Online Retail dataset](https://archive.ics.uci.edu/dataset/352/online+retail).

I started with simple calculations in **Excel** to score customers based on Recency, Frequency, and Monetary value. You can see this work here: [RFM Analysis in Excel](https://github.com/AreeshaSolangi/Projects/blob/main/End_To_End_Projects/Customer%20Segmentation%20Using%20RFM%20Analysis/RFM%20analysis%20in%20Excel.xlsx).

Then, I extended the analysis in **Python** using a Jupyter Notebook. In addition to RFM segmentation, I explored deeper patterns, including correlations between metrics. For example, I found a **moderate positive correlation between Monetary value and Frequency**, which makes sense because customers who purchase more often tend to spend more. The notebook is available here: [RFM Analysis in Python](https://github.com/AreeshaSolangi/Projects/blob/main/End_To_End_Projects/Customer%20Segmentation%20Using%20RFM%20Analysis/RFM%20analysis.ipynb).

## Quick Insights

- **Champions:**  
  Customers with high scores across all three metrics (R, F, M). They are the most loyal and valuable, making frequent purchases and generating high revenue.  

- **At Risk:**  
  Customers with low Recency but moderate Frequency and Monetary scores. They purchased frequently and spent moderately in the past but have not made recent purchases, indicating a risk of churn.  

- **Explorers:**  
  Customers with high Recency but low Frequency and Monetary scores. They recently purchased but are not frequent buyers and have low spending, possibly new or one-time customers.  

- **Hibernating:**  
  Customers low across all three metrics. They are disengaged, with infrequent and low-value purchases, likely inactive or at risk of being lost entirely.  

## Recommendations

Based on the analysis, I identified ways to engage each customer segment:  

1. Reward and retain Champions with loyalty programs and exclusive offers.  
2. Re-engage At Risk and Hibernating customers through targeted campaigns or personalized incentives.  
3. Encourage Explorers to make repeat purchases using onboarding offers, bundles, or reminders.  

This project demonstrates how RFM analysis can help understand customer behavior and prioritize engagement strategies effectively.


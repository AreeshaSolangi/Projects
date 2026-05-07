# Customer Data Cleaning Project

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python) ![Pandas](https://img.shields.io/badge/Pandas-Data%20Cleaning-green) ![NumPy](https://img.shields.io/badge/NumPy-Numerical-orange) ![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## Overview

This project demonstrates a full end-to-end data cleaning workflow on a real-world style customer dataset containing **101,500 rows and 18 columns**. The dataset was intentionally messy, replicating the kinds of quality issues analysts encounter daily in business environments.

After cleaning, the dataset was reduced to **100,061 analysis-ready rows across 19 columns**, with all critical data quality issues resolved.

---

## Dataset

| Property | Before Cleaning | After Cleaning |
|---|---|---|
| Rows | 101,500 | 100,061 |
| Columns | 18 | 19 |
| Duplicate Records | 1,500 | 0 |
| Invalid Ages | 500+ | 0 |
| Malformed Emails | 600+ | Flagged as NaN |
| Negative Amounts | 300 | 0 |
| Future-dated Records | 200 | Flagged as NaN |
| Inconsistent Categories | 8+ formats per column | Standardized |
| Mixed Currency Symbols | 350 | Removed |

---

## Data Quality Issues Found

### 1. Duplicate Records
1,500 exact duplicate rows were identified and removed using pandas `drop_duplicates()`.

### 2. Invalid Age Values
Ages below 18 and above 80 were treated as data entry errors and replaced with NaN. Age nulls were then imputed using the column median to preserve row count.

### 3. Inconsistent Categorical Values
Multiple columns contained the same value in different formats:
- Gender: Male / male / M / MALE / Female / female / F / FEMALE — standardized to M / F
- Country: Pakistan / pakistan / PK / United Kingdom / uk / GB — standardized to PK / UK / USA / GB
- Loyalty Tier: bronze / GOLD / silver / Platinum — standardized to title case
- Product Category: electronics / CLOTHING / food — standardized to title case
- Discount Used: Yes / No / 1 / 0 / True / False — standardized to Yes / No
- Churn Status: Active / Churned / 1 / 0 — encoded to 0 (Active) / 1 (Churned)

### 4. Malformed Email Addresses
600+ emails contained invalid formats such as missing @ symbols, double @@, or no domain. These were replaced with NaN. Emails and phone numbers were not imputed as values cannot be estimated.

### 5. Currency Symbols in Numeric Column
350 rows in Total_Purchase_Amount contained mixed currency prefixes including $, £, Rs., and USD. Symbols were stripped using regex and the column was converted to float.

### 6. Negative Purchase Amounts
300 rows had negative values in Total_Purchase_Amount. In the absence of business context confirming these as refunds, they were replaced with NaN.

### 7. Wrong Data Types in Num_Orders
400 rows contained non-numeric strings such as N/A, unknown, and ? in a numeric column. These were cleaned using regex and the column was converted to float.

### 8. Future-Dated Records
200 rows had Signup_Date set to 2027, a future date indicating a system default error. These were replaced with NaT.

### 9. Whitespace in Text Fields
Leading and trailing whitespace was stripped across all string columns using `.str.strip()`.

### 10. Feature Engineering
Full_Name was split into First_name and Last_name columns for better usability in downstream analysis.

---

## Columns with Intentional Remaining Nulls

| Column | Nulls Remaining | Reason |
|---|---|---|
| Email | 2,204 | Cannot impute contact information |
| Phone | 1,002 | Cannot impute contact information |
| Age | 2,489 | Imputed with median |
| Rating | 17,634 | Missing rating = customer did not rate. Imputing would misrepresent behaviour |
| Annual_Income | 1,502 | Left for downstream analyst decision |
| Signup_Date | 200 | Future dates flagged as NaT |
| Last_Purchase_Date | 500 | Original nulls retained |

---

## Tools Used

- Python 3.x
- pandas
- NumPy
- Jupyter Notebook

---

## Key Skills Demonstrated

- Duplicate detection and removal
- Null value handling: imputation vs intentional retention
- Regex-based text cleaning
- Data type conversion and validation
- Categorical standardization and label encoding
- Date validation and future date handling
- Feature engineering from existing columns
- Documenting cleaning decisions for stakeholder communication

---

## Files

| File | Description |
|---|---|
| `Customer_Data_Cleaning.ipynb` | Full cleaning notebook with all steps |
| `dirty_customer_dataset_100k.csv` | Raw messy dataset (101,500 rows) |
| `Cleaned_Dataset.csv` | Final cleaned dataset (100,061 rows) |

---

## Author

**Areesha Kamil**
Data Analyst | Python, SQL, Power BI, Excel
[LinkedIn](https://linkedin.com/in/areesha-kamil-5607b4265) | [GitHub](https://github.com/AreeshaSolangi)

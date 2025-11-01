<h1 align="center">Profile Data Extraction</h1>

## 📘 Project Overview
This project focuses on **automated data extraction** from the [FFP Planner Directory](https://ffp.nl/vind-een-planner/?gespecialiseerd_vermogensopbouw=vermogensopbouw&pageNumber=1) website. The goal was to collect detailed planner information related to the specialization **"Vermogensopbouw"** (wealth building) by using **Selenium WebDriver** for dynamic web scraping.

## 🧩 Key Features
- Filtered the data to include only planners specializing in *vermogensopbouw*.  
- Navigated through multiple pages and extracted all **profile links**.  
- Accessed each profile page and extracted key details including:  
  - Profile link  
  - Website link  
  - Phone number  
  - Email address  
  - Name  

## ⚙️ Tools & Technologies
- **Python**  
- **Selenium WebDriver**  
- **Pandas**  
- **Excel** and **Power Query Editor**  

## 🗂️ Workflow Summary
1. Automated navigation and extraction using Selenium.  
2. Stored extracted data into an **Excel file** for further processing.  
3. Cleaned and refined the dataset using **Excel Query Editor** to ensure accuracy and consistency.  

## 📊 Cleaned Data Preview
The final dataset contains **910+ verified records**, organized and cleaned for analysis.  
Below is a snapshot of the cleaned Excel table:

![Cleaned Dataset Preview](https://github.com/AreeshaSolangi/Projects/blob/main/Data%20Extraction/Profile%20Data%20Extraction/1.PNG)

## 📁 Files in This Repository
- **[ffp.ipynb](https://github.com/AreeshaSolangi/Projects/blob/main/Data%20Extraction/Profile%20Data%20Extraction/ffp.ipynb)** — Jupyter Notebook containing the Selenium-based extraction code.  
- **[Profile Data.csv](https://github.com/AreeshaSolangi/Projects/blob/main/Data%20Extraction/Profile%20Data%20Extraction/Profile%20Data.csv)** — Cleaned dataset containing extracted profile information.  

## 🧠 Skills Demonstrated
- Web scraping with Selenium  
- Data filtering and automation  
- Data cleaning and transformation in Excel  
- Documentation and workflow organization  

---

Would you like me to add a small **“How to Run”** section explaining how someone could execute your notebook on their system?

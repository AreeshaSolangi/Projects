# 🧩 Automation with Excel and Power Query

This repository demonstrates how I used Power Query to automate various data preparation and transformation tasks in Excel. Each example shows how data cleaning and integration can be performed once, and then reused automatically whenever the source data is updated.

📂 **Project Files:**  
[Automation With Excel – Example Files](https://github.com/AreeshaSolangi/Projects/tree/main/Excel/Automation%20With%20Excel)

---

## 📘 Project Overview

### 1. Employee Data Automation
I started with an employee dataset that contained inconsistencies and missing values. Using Power Query, I cleaned and formatted the data by removing blanks, standardizing casing, and adjusting data types. After the transformations were defined, any new data added to the original employee file was automatically cleaned after refreshing, based on the previously applied Power Query steps.

### 2. Web Data Scraping and Transformation
I imported data directly from a website using Power Query’s From Web connector. After scraping the table, I cleaned and reshaped the data by removing unnecessary columns and rows, then transformed it into a structured format ready for analysis and saved it back to Excel.

### 3. Monthly Sales Folder Automation
In this example, multiple monthly Excel files were placed in one folder. Using Power Query’s Folder option, I combined all files into a single table and applied transformations once. When a new monthly file was added to the same folder, refreshing automatically combined and updated the entire dataset.

### 4. Student and Course Data Integration
I appended two years of student data and then merged it with a course table to create a master dataset. After merging, I grouped and summarized the data for better insights and loaded the final structured table back into Excel for reporting.

---

## ⚙️ Tools and Skills Used
- Microsoft Excel (Power Query)
- Data Cleaning and Transformation
- Data Appending and Merging
- Folder Automation
- Web Data Scraping
- Dynamic Refresh and Auto-update Workflows

---

## 💡 Key Takeaway
These examples show how repetitive Excel tasks can be automated using Power Query. Once the initial steps are created, future updates require only a simple refresh, making workflows faster, consistent, and more efficient.


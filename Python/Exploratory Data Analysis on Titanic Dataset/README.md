# Exploratory Data Analysis on Titanic Dataset  

This project explores the **Titanic Dataset** from the [Kaggle Titanic competition](https://www.kaggle.com/competitions/titanic/data?select=test.csv). The goal was to perform **exploratory data analysis (EDA)** to better understand the survival patterns of passengers based on different features.  

📂 Project Notebook: [Titanic Dataset EDA](https://github.com/AreeshaSolangi/Projects/blob/main/Python/Exploratory%20Data%20Analysis%20on%20Titanic%20Dataset/Titanic%20Dataset.ipynb)  

---

## 🔧 Data Cleaning and Preprocessing  
- Fixed inconsistent formats and corrected data types.  
- Handled missing/null values in columns like **Age, Embarked, and Fare**.  
- Applied mapping on categorical columns (converted Pclass numbers into categories, converted Ticket into object type, and replaced Embarked codes with full names).  
- Created **bins for Age and Fare** to group passengers into ranges for better interpretation.  

---

## 📊 Analysis Performed  
- **Univariate Analysis** → Examined the distribution of individual columns such as Age, Fare, Gender, and Embarked.  
- **Bivariate Analysis** → Explored relationships between survival and features like Gender, Age, Pclass, and Embarked.  
- **Multivariate Analysis** → Combined multiple features (e.g., Fare, Age, and Survival) to find deeper patterns.  
- **Numerical Analysis** → Correlation checks and summary statistics to identify important numerical relationships.  

---

## 🔍 Key Insights  
- **Women had much higher survival chances compared to men**.  
- **Children survived more often** than older passengers.  
- Passengers in **higher classes (first class with higher fares)** had significantly better survival chances.  
- **Embarked location mattered**: passengers from *Cherbourg* survived more often compared to those from Southampton or Queenstown.  
- Correlation analysis showed **Pclass, Fare, and Gender** were strongly linked to survival outcomes.  

---

## ✅ Conclusion  
Through EDA, we can see that **gender, class, age, and fare were the strongest factors influencing survival** on the Titanic. These insights can be used later for building predictive models.  


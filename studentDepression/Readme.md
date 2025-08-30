# 🎓 Student Mental Health & Depression Analysis (End-to-End Data Analytics Project)

## 📌 Problem Statement

Student mental health has become a global concern, with rising levels of depression, stress, and suicidal thoughts among young learners.
Despite the availability of academic and lifestyle data, institutions often lack integrated insights into the factors driving student mental health issues.

The objective of this project was to:

* Consolidate and clean self-reported student survey data.

* Perform Exploratory Data Analysis (EDA) and Statistical Testing.

* Use SQL transformations for feature engineering.

*  Develop an interactive Power BI dashboard highlighting academic,     lifestyle, and financial stress-related factors that contribute to depression.

> This project performs an end-to-end analysis of a student survey dataset to identify the key factors correlated with depression.


## ✅ Solution

This project demonstrates an end-to-end analytics workflow:

 - Raw student data ingested and cleaned with Python Libraries (Pandas) and later duplicated to SQL (SQLite + MySQL-like syntax).

 - Statistical analysis (Chi-Square) performed using Python (Pandas, SciPy, Matplotlib).

 - Data model built in Power BI with encoded categorical variables and DAX measures.

 - Final dashboard designed with multi-page storytelling — Academic, Lifestyle, and Summary insights.

 - Created a final report in powerpoint in order to represent the key findings of the project.


## Dataset Information

The dataset includes **~28,000** students with demographic, academic, and lifestyle factors:

    - Demographics: Gender, Age, City, Degree, Profession.

    - Academic Factors: CGPA, Academic Pressure, Study Hours, Study Satisfaction.

    - Lifestyle Factors: Sleep Duration, Dietary Habits, Financial Stress.

    - Mental Health Indicators: Depression (binary 0/1), Suicidal Thoughts, Family History of Mental Illness.

[View Dataset](../studentDepression/Data/student_depression_raw.csv)


---
# **📂Project Structure**

```
Student-Depression/
│
├── Data/
│   └── student_depression_raw.csv
|   └── student_data.db
│
├── Images/
│   └── Page1.png
│   └── Page2.png
│   └── Page3.png
│   └── ...
│
├── Notebook/
│   └── studentDepressionAnalysis_EDA+Statistical.ipynb
│
├── PowerBI/
│   ├── Dashboard.pbix
│
├── Report/
│   └── Student_Depression_Report.pptx
│
├── SQL_Analysis
│   ├── transformations.sql
│   ├── Analysis_1.sql
│   ├── Analysis_2.sql
│   └── ...
│
└── README.md

```

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=sqlite&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

# **🔄 Project Workflow**

**📥 Data Cleaning & Preparation**

- Initial data cleaning and type conversion were performed using Power Query in Power BI and duplicated in Python for the initial EDA

**📊 Exploratory Data Analysis (EDA)**

 -  In-depth EDA was conducted in a Jupyter Notebook to uncover initial  patterns, test hypotheses, and understand the complex relationships between  variables.
 - Python (EDA & Statistical Analysis)
 - Conducted univariate & bivariate analysis.
 - Chi-square tests for categorical associations.
 - Visualization with Matplotlib & Seaborn.

[VIEW EDA FILE 🐍](../studentDepression/Notebook/studentDepressionAnalysis_EDA+Statistical.ipynb)

**SQL Pipeline Simulation**

 - To showcase a more robust workflow, a local SQLite database was created. A dedicated .sql script was written to handle all data transformation and feature engineering, simulating a real-world environment where the data source is a database, not a flat file.

**📐 Data Modeling in Power BI**

- **Defined key DAX measures: Depression Rate, Suicidal Thoughts Rate,etc**    
![Measures Table](../studentDepression/Images/Measures%20Table.png)

**📈 Dashboard Development & Publishing**

- Designed dashboards for Loan Analysis, Deposit Analysis, and Summary Views.

- Published to Power BI Service for online access.

**📈 Dashboard Development**

Pages created:

    - 🏠 Home Page → Student overview & KPIs.

    - 📚 Academic Factors → CGPA, Pressure, Study Satisfaction.

    - 🍎 Lifestyle Factors → Sleep, Diet, Financial Stress.

    - 📑 Summary Page → Key findings, Recommendations.

**📊 Dashboard Structure**

- Home Page
![Home Page](../studentDepression/Images/Page%201.png)

- Academic Factors
![Academic Factors](../studentDepression/Images/Page%202.png)

- Lifestyle Factors
![Lifestyle Factors](../studentDepression/Images/Page%203.png)


- Summary Page
![Academic Factors](../studentDepression/Images/Page%204.png)

**📃Final Report Building**

- The final, validated insights were presented in a comprehensive, multi-page interactive dashboard in Power BI and summarized in a final PowerPoint presentation.

- Included important questions and key visuals and insights from the dashboard and EDA.

    ![alt text](../studentDepression/Images/Report%20Questions.png)  

> [View Full Report](../studentDepression/Report/student_depression_report_structure.pdf)

> [View ppt Files](../studentDepression/Report/student_depression_report_structure.pptx)

---
# **💻 Tech Stack**
* **Languages: Python, SQL**

* **Libraries: Pandas, Matplotlib, Seaborn, chi2_contingency**

* **Database: SQLite**

* **BI Tool: Microsoft Power BI**

* **IDE: VS Code, Jupyter Notebook**

* **Report Tool: Microsof PowerPoint**

* **Version Control: GitHub**

---
# **🛠️ Skills Showcased**

- **SQL (MySQL database creation, relational modeling)**

- **Python (Pandas, SciPy, Matplotlib) → EDA & statistical analysis.**

- **Data Cleaning & Encoding → Binary, Ordinal, Binning.**

- **Statistical Analysis & Correlation Study**

- **Statistical Hypothesis Testing → Chi-Square**

- **Analysis Using SQL Queries**

- **Power BI Data Modeling & DAX**

- **Dashboard Design & Storytelling**

- **Slicers, KPI Indicators & Tables**

- **Interactive Reporting**

- **End-to-End Workflow: Data → EDA → Statistical Analysis → SQL → Dashboard -> Report Building.**

---
# 🚧 **Technical Challenges**

  -  Self-reported survey bias (accuracy concerns).

  -  Class imbalance (Depressed vs Not Depressed students).

  -  Data quality issues (missing values, inconsistent data types).

  -  Encoding categorical variables (Sleep, Diet, Family History).

  -  High-cardinality features (Cities, Degrees).

  -  Integration of multiple tools (SQL → Python → Power BI).

  -  Time-consuming dashboard design (multi-page with storytelling).

---
# ✨ **Key Findings**
The analysis revealed several key insights into the drivers of student depression:

Lifestyle is the Strongest Predictor: The factors with the highest correlation to depression were daily habits. Poor sleep duration was the single most significant factor, followed closely by unhealthy dietary habits.

Academic Experience Outweighs Performance: A student's subjective experience—the academic pressure they feel and their satisfaction with their studies—proved to be a more direct indicator of their mental health than their objective grades (CGPA).

> Financial Stress is a Critical Amplifier: The data shows that financial stress significantly amplifies the negative impact of academic pressure, identifying students facing both challenges as a particularly vulnerable group.


##
# 🏁 Conclusion

This project demonstrates the full lifecycle of a data analytics project, from raw survey data to a polished Power BI dashboard.

    * Highlighted lifestyle and stress as the dominant drivers of student depression.

    * Showcased skills in SQL, Python, Statistics, and Power BI storytelling.

    * Built a final powerpoint report highlighting key findings and recommendations.

    * Reinforced the workflow discipline of:

> Data → Cleaning → EDA(Python) → SQL → Dashboard → Reporting → Recommendations
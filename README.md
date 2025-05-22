
## Task 5: Exploratory Data Analysis (EDA) – Titanic Dataset

## Objective
This task involved performing **Exploratory Data Analysis (EDA)** on a real-world dataset (Titanic dataset) using Python. The goal was to discover patterns, relationships, and outliers that might inform future predictive modeling.

---

## Tools Used
- Python 3
- Jupyter Notebook
- Pandas
- Matplotlib
- Seaborn

---

##  Dataset Overview
- File: `test.csv`
- Dataset contains passenger-level information from the Titanic voyage.
- Key columns:
  - `PassengerId`, `Pclass`, `Name`, `Sex`, `Age`, `SibSp`, `Parch`, `Ticket`, `Fare`, `Cabin`, `Embarked`

---

## Steps Performed

1. **Data Loading & Inspection**
   - Used `.head()`, `.info()`, `.describe()` to explore structure.

2. **Missing Value Analysis**
   - Identified nulls in `Age`, `Cabin`, and `Embarked`.

3. **Univariate Analysis**
   - Plotted histograms for numerical features like `Age` and `Fare`.
   - Used countplots for `Sex`, `Pclass`, and `Embarked`.

4. **Bivariate Analysis**
   - Visualized relationships such as `Pclass` vs `Sex`, `Age` vs `Fare`.

5. **Correlation Analysis**
   - Used `.corr()` and `sns.heatmap()` to understand numeric relationships.

6. **Outlier Detection**
   - Boxplots helped highlight outliers in `Fare`.

7. **Pairplot for Multivariate Analysis**
   - Visualized relationships between `Age`, `Fare`, `SibSp`, `Pclass`.

---

##  Key Insights

- Majority of passengers were male and in 3rd class.
- Fare and Age showed skewed distributions with visible outliers.
- Positive correlation between Fare and Pclass.
- Most passengers boarded from port **S**.
- Missing values must be handled before predictive modeling.

---

## Files Included

- `VG TASK(5).ipynb` – Jupyter notebook containing the full EDA
- `test.csv` – Titanic dataset used for analysis
- `Task5_EDA_Report.pdf` – Clean PDF summary of insights

---

## Author
**[Your Name]**  
Data Analyst Intern  

##  Author

**[GUDIPALLI VEDAVYAS ]**  
Data Analyst Intern  

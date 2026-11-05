## Title and Abstract:

## Introduction:


## Executive Summary:
-
-
-
-
-

## Data:





## Visualization:


## Analysis:
---
File: 05_Cleaning_data.Rmd
desc: Data cleaning and preprocessing
---
**Purpose**
05_Cleaning_data.Rmd outlines the data cleaning and preprocessing for our investment performance analysis.The datasets include historical Bitcoin prices, S&P 500 values and U.S. Treasury ETF prices. The objective is to prepare consistent datasets for analysis and portfolio comparisons.

**Pre-filtering**
Before cleaning the datasets, we examine their dimensions, variable names, and missing observations. Because the dataset contains no missing values and is a clean dataset from a reputable source our next step is to filter for our analysis. Our research focuses on the period beginning January 1, 2020, and ending October 1, 2026.

**Selecting Relevant Variables**
For the investment performance analysis, we primarily need the date and adjusted closing price. Bitcoin trades every day, compared to stocks and treasury markets that only operate on business days. For consistentcy, we extract the final available observation for each calendar month. We then combine the 3 investment datasets using their common month.

**Conclusion**
The three financial datasets have been imported, inspected, cleaned, and converted into monthly observations. The three investment datasets have also been combined using their common calendar months. The resulting datasets are now prepared for the next stage of the analysis; calculating investment returns and comparing portfolio performance.
---
## Title: Stat107 Final Project : Investment Performance Analysis

**Abstract:**
This project examines and compares the historical investment performance of 3 different investments: Bitcoin, S&P 500 and U.S. Federal Treasury Bonds. The primary objective is to determine how these investments performed between January 1, 2020, and October 1, 2026. 
The analysis uses historical financial data, data cleaning, statistical summaries, and visualizations to compare investment performance and risk.

---
## Introduction:

The project investigates two main research questions:

If an investor invested $1,000 into Bitcoin, the S&P 500, or Federal Treasury Bonds in January 2020, which investment would have generated the highest return?

If an investor contributed $500 every month into each investment, regardless of market performance, which portfolio would have the highest ending value?

---
## Executive Summary:

- Compare Bitcoin,  S&P 500, and U.S. Treasury bonds from 2020–2026
- Evaluate historical return and volatility across all three investments
- Compars monthly $500 investments using dollar-cost averaging
- Examine the growth of a hypothetical $1,000 investment
- Examine relative performance, risk, and long-term growth potential of each investment

---
## Data:

File: Data_sets
desc: Folder of csv files containing BTC, IEF and SPX historical data

The Historical financial data are obtained from Yahoo Finance Gold Plan:

BTC: https://finance.yahoo.com/quote/BTC-USD/history
IEF: https://finance.yahoo.com/quote/IEF/history
SPX: https://finance.yahoo.com/quote/%5ESPX/


---
## Visualization:

File: 03_data_visualizations.R
desc: visual graphs used for interpreting our data




---
## Analysis:

File: 05_Cleaning_data.Rmd
desc: Data cleaning and preprocessing

**Purpose**
05_Cleaning_data.Rmd outlines the data cleaning and preprocessing for our investment performance analysis.The datasets include historical Bitcoin prices, S&P 500 values and U.S. Treasury ETF prices. The objective is to prepare consistent datasets for analysis and portfolio comparisons.

**Pre-filtering**
Before cleaning the datasets, we examine their dimensions, variable names, and missing observations. Because the dataset contains no missing values and is a clean dataset from a reputable source our next step is to filter for our analysis. Our research focuses on the period beginning January 1, 2020, and ending October 1, 2026.

**Selecting Relevant Variables**
For the investment performance analysis, we primarily need the date and adjusted closing price. Bitcoin trades every day, compared to stocks and treasury markets that only operate on business days. For consistentcy, we extract the final available observation for each calendar month. We then combine the 3 investment datasets using their common month.

**Conclusion**
The three financial datasets have been imported, inspected, cleaned, and converted into monthly observations. The three investment datasets have also been combined using their common calendar months. The resulting datasets are now prepared for the next stage of the analysis; calculating investment returns and comparing portfolio performance.
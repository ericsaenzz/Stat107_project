## Title: Stat107 Final Project : Investment Performance Analysis

**GitHub Repository Link**: https://github.com/ericsaenzz/Stat107_project
Created by Eric Chang
assigned group: Seth Castorillo and Yizhe Shan

**Abstract:**
This project examines and compares the historical investment performance of 3 different investments: Bitcoin, S&P 500 and U.S. Federal Treasury Bonds. Our primary objective is to determine how each investment portfolio performed between January 1, 2020, and October 1, 2026. The analysis uses financial data, data cleaning, statistical summaries, and visualizations to compare investment performance and risk.

The purpose of this analysis is to understand how different assets perform under different strategies and market conditions. Investors often face tough decisions on how to allocate capital between high risk assets, equities, and fixed income investments. By comparing these investments over the same period of time, this project aims to give insight into the relationship between ROI, volatility, and portfolio growth. The findings may benefit individuals interested in understanding investment performance and comparing lumpsum investing with dollar cost averaging.

---
## Introduction:

The project investigates two main research questions:

If an investor invested $1,000 into Bitcoin, the S&P 500, or Federal Treasury Bonds in January 2020, which investment would have generated the highest return?

If an investor contributed $500 every month into each investment, regardless of market performance, which portfolio would have the highest ending value?

---
## Project Objectives:

- Compare Bitcoin,  S&P 500, and U.S. Treasury bonds from 2020–2026
- Evaluate historical return and volatility across all three investments
- Compars monthly $500 investments using dollar-cost averaging
- Examine the growth of a hypothetical $1,000 investment
- Examine relative performance, risk, and long-term growth potential of each investment

---
## Data:


**File:** "Data_sets"

**Desc:** Folder of csv files containing BTC, IEF and SPX historical data

The Historical financial data are obtained from Yahoo Finance Gold Plan:

BTC: https://finance.yahoo.com/quote/BTC-USD/history

IEF: https://finance.yahoo.com/quote/IEF/history

SPX: https://finance.yahoo.com/quote/%5ESPX/

The analysis uses adjusted closing price to measure price performance. The original datasets contain daily observations, which are converted into monthly observations by selecting the final price observation of each month. The analysis period covers January 2020 to September 2026, resulting in 81 monthly observations for each investment. 

The datasets are inspected for missing values, duplicate dates, invalid prices, and inconsistent date formats. After inspecting and cleaning, the 3 datasets are combined using the common month.

---
## Visualization:

**File:** "03_data_visualizations.R"

**Desc:** visual graphs used for interpreting our data

Three visuals are utilized in this study: We use a line graph to observe the $1,000 lump-sum investment performance. A line graph for the $500 monthly investment portfolio performance and a boxplot for the Distribution of monthly returns.

---
## Analysis:

**File:** "05_Cleaning_data.Rmd"

**Desc:** Data cleaning and preprocessing

**Purpose**
05_Cleaning_data.Rmd outlines the data cleaning and preprocessing for our investment performance analysis.The datasets include historical Bitcoin prices, S&P 500 values and U.S. Treasury ETF prices. The objective is to prepare consistent datasets for analysis and portfolio comparisons.

**Pre-filtering**
Before cleaning the datasets, we examine their dimensions, variable names, and missing observations. Because the dataset contains no missing values and is a clean dataset from a reputable source our next step is to filter for our analysis. Our research focuses on the period beginning January 1, 2020, and ending October 1, 2026.

**Selecting Relevant Variables**
For the investment performance analysis, we primarily need the date and adjusted closing price. Bitcoin trades every day, compared to stocks and treasury markets that only operate on business days. For consistentcy, we extract the final available observation for each calendar month. We then combine the 3 investment datasets using their common month.

**Conclusion**
The three financial datasets have been imported, inspected, cleaned, and converted into monthly observations. The three investment datasets have also been combined using their common calendar months. The resulting datasets are now prepared for the next stage of the analysis; calculating investment returns and comparing portfolio performance.

The expected outcome is that BTC will demonstrate higher historical returns and greater volatility than the SnP 500 and the Snp500 will have a much higher return than Treasury Bonds (IEF). 

---
## Executive Summary Findings:
- Bitcoin produced the highest ending portfolio value with both the $1,000 lumpsum and $500/mo investment strategy

- A $1,000 initial investment in BTC grew to $8,935.74 by September 2026, compared with $2,372.19 for the SnP500 and $925.27 for IEF

- Under the monthly investment strategy, BTC reached approximately $114,364.81, compared with $67,705.17 for the SnP500 and $39,296.34 for IEF.

- The investment strategies demonstrate how contribution frequency and historical asset performance influence ending portfolio values.

- Monthly return distributions will help evaluate the differences in risk and volatility across the 3 investments.

## Contributions
Eric Chang - Project topic, Sourcing Data, Extracting Data, Cleaning and Processing Data, Creating Visual Graphs, all files and reports associated with this project

Yizhe Shan - none

Seth Castorillo M - none


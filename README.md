# Stat107 Final Project : Investment Performance Analysis
- Created by Eric Chang and Seth Castorillo

# Project Description:
This project examines and compares the historical investment performance of 3 different investments: Bitcoin, S&P 500 and U.S. Federal Treasury Bonds. The primary objective is to determine how these investments performed between January 1, 2020, and October 1, 2026.
The project investigates two main research questions:

If an investor invested $1,000 into Bitcoin, the S&P 500, or Federal Treasury Bonds in January 2020, which investment would have generated the highest return?

If an investor contributed $500 every month into each investment, regardless of market performance, which portfolio would have the highest ending value?

The analysis uses historical financial data, data cleaning, statistical summaries, and visualizations to compare investment performance and risk.

# Data Sources:

The Historical financial data are obtained from the following sources:

Bitcoin: Yahoo Finance market data (BTC).
https://finance.yahoo.com/quote/BTC-USD/history

S&P 500: Federal Reserve Economic Data (FRED), using the SP500.
https://fred.stlouisfed.org/series/SP500

U.S. Treasury Bonds: Federal Reserve Economic Data (FRED), using 10 Year Treasury Constant Maturity Rate (DGS10).
https://fred.stlouisfed.org/series/DGS10

# Repository Structure: 

The repository contains the following files:

| File | Description |
|:---|:---|
| `README.md` | Provides overview of our project, describes repo files, and explains how to reproduce |
| `00_requirements.R` | Install and loads R packages required for analysis |
| `01_Data.R` | Stores original historical datasets downloaded from Yahoo Finance and FRED |
| `02_DataProcessing.Rmd` | Processes cleaned datasets and calculates portfolio and investment returns |
| `03_DataVisualization.Rmd` | Produces preliminary visuals and statistical summaries of investment performance |
| `04_Functions.R` | Custom R functions used for data cleaning, portfolio calculations, and visuals |
| `05_Cleaning_data.Rmd` | Downloads, cleans, and preps financial datasets for analysis |
| `FinalReport.Rmd` | Contains written research report conclusions |
| `FinalReport.pdf` | Knitted PDF version of the final research report |
| `Output/` | Stores cleaned and processed datasets generated during our analysis |

# Methodology: 
The analysis compares three investment portfolios over the same historical period. Two investment strategies are examined:

**Initial Investment Strategy**: Each portfolio begins with an initial investment of $1,000 in January 2020. The ending portfolio values are compared to determine the historical returns of each investment.

**Monthly Contribution Strategy**: Each portfolio receives an additional $500 contribution every month, regardless of market performance. The accumulated portfolio values are compared at the end of the study period.

**Additional statistical measures include:**
- Total investment return.
- Compound annual growth rate (CAGR).
- Monthly investment returns.
- Investment volatility.
- Maximum portfolio drawdown.


# Step By Step Instructions
**Step 1**: Data acquisition. Obtain the three historical datasets, verify dates and variables, and save the original CSV files in repository.

**Step 2**: Requirements and functions. Create the function files.

**Step 3**: Data cleaning. Clean data, handle missing observations, standardize dates, and prepare the datasets.

**Step 4**: Data processing. Calculate investment returns, portfolio values along with monthly contributions.

**Step 5**: Visualization. Create charts and written interpretations for the data.

**Step 6**: Final report. Complete and knit it into Final Report pdf.

**Step 7**: Reproducibility. Test the entire project from a clean R environment and update README with execution instructions.

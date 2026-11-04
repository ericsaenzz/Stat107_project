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

Bitcoin: Yahoo Finance historical market data (BTC-USD).
https://finance.yahoo.com/quote/BTC-USD/history

S&P 500: Federal Reserve Economic Data (FRED), using the SP500 series.
https://fred.stlouisfed.org/series/SP500

U.S. Treasury Bonds: Federal Reserve Economic Data (FRED), using the 10-Year Treasury Constant Maturity Rate (DGS10).
https://fred.stlouisfed.org/series/DGS10

# Repository Structure: 
## 3. Repository Structure

The repository contains the following files:

| File | Description |
|:---|:---|
| `README.md` | Provides overview of our project, describes repo files, and explains how to reproduce |
| `00_requirements.R` | Install and loads R packages required for analysis |
| `Functions/` | Custom R functions used for data cleaning, portfolio calculations, and visuals |
| `Data/` | Stores original historical datasets downloaded from Yahoo Finance and FRED |
| `Cleaning_data.Rmd` | Downloads, cleans, and preps financial datasets for analysis |
| `02_DataProcessing.Rmd` | Processes cleaned datasets and calculates portfolio and investment returns |
| `03_DataVisualization.Rmd` | Produces preliminary visuals and statistical summaries of investment performance |
| `FinalReport.Rmd` | Contains written research report conclusions |
| `FinalReport.pdf` | Knitted PDF version of the final research report |
| `Output/` | Stores cleaned and processed datasets generated during our analysis |

# Methodology:



# Step By Step Instructions
**Step 1**: Data acquisition. Obtain the three historical datasets, verify dates and variables, and save the original CSV files in repository.

**Step 2**: Requirements and functions. Create the function files.

**Step 3**: Data cleaning. Clean data, handle missing observations, standardize dates, and prepare the datasets.

**Step 4**: Data processing. Calculate investment returns, portfolio values along with monthly contributions.

**Step 5**: Visualization. Create charts and written interpretations for the data.

**Step 6**: Final report. Complete and knit it into Final Report pdf.

**Step 7**: Reproducibility. Test the entire project from a clean R environment and update README with execution instructions.

# Cleaning Data Functions for file 05_cleaning_data.rmd
#---------------------------------------- 
#Function 1: clean datasets
#input: raw datasets and asset ticket
#output: cleaned dataset with standardized column names, dates, and adjusted closing price

clean_market_data <- function(data, asset_name) {
  
  names(data)[names(data) == "Adj Close"] <- "Adjusted_Close"
  data$Date <- as.Date(data$Date)
  cleaned <- data[, c("Date", "Open","High","Low", "Close", "Adjusted_Close", "Volume")]
  
  cleaned <- cleaned[
    !is.na(cleaned$Date) &
      !is.na(cleaned$Adjusted_Close) &
      cleaned$Adjusted_Close > 0,
  ]
  
  cleaned <- cleaned[!duplicated(cleaned$Date), ]
  cleaned <- cleaned[order(cleaned$Date), ]
  cleaned$Asset <- asset_name
  return(cleaned)
}
#---------------------------------------- 
# Function 2: extract monthly data
# input: cleaned daily market dataset
# output: Dataset with last available trading day observation for each month

get_monthly_data <- function(data) {
  
  data$Month <- as.Date(format(data$Date, "%Y-%m-01"))
  monthly_data <- data[
    !duplicated(data$Month, fromLast = TRUE),
  ]
  monthly_data <- monthly_data[
    order(monthly_data$Month),
  ]
  
  return(monthly_data)
}
#---------------------------------------- 

# Pre-Processing Functions to be called for 02_DataProcessing.Rmd
#---------------------------------------- 
# Function 1: calculate monthly returns
# input: monthly investment dataset
# output: monthly percentage returns for each asset

calculate_monthly_returns <- function(data) {
  
  monthly_returns <- data.frame(
    Month = data$Month[-1]
  )
  
  monthly_returns$Bitcoin_Return <-
    diff(data$Bitcoin) / head(data$Bitcoin, -1)
  
  monthly_returns$SP500_Return <-
    diff(data$SP500) / head(data$SP500, -1)
  
  monthly_returns$IEF_Return <-
    diff(data$IEF) / head(data$IEF, -1)
  
  return(monthly_returns)
}
#----------------------------------------
# Function 2: Calculate cumulative return
# input: monthly return dataset
# output: compounded cumulative returns for each asset

calculate_cumulative_returns <- function(data) {
  cumulative_returns <- data.frame(
    Month = data$Month
  )
  cumulative_returns$Bitcoin_Cumulative <-
    cumprod(1 + data$Bitcoin_Return)
  
  cumulative_returns$SP500_Cumulative <-
    cumprod(1 + data$SP500_Return)
  
  cumulative_returns$IEF_Cumulative <-
    cumprod(1 + data$IEF_Return)
  
  return(cumulative_returns)
}
#----------------------------------------
# Function 3: Calculate lump sum
# Input: Cumulative return and initial investment amount
# Output: Portfolio value over time

calculate_lump_sum <- function(data, initial_investment) {
  lump_sum_results <- data.frame(
    Month = data$Month
  )
  lump_sum_results$Bitcoin_Value <-
    initial_investment * data$Bitcoin_Cumulative
  
  lump_sum_results$SP500_Value <-
    initial_investment * data$SP500_Cumulative
  
  lump_sum_results$IEF_Value <-
    initial_investment * data$IEF_Cumulative
  
  return(lump_sum_results)
#----------------------------------------
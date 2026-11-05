# Cleaning Data Functions
#---------------------------------------- 
#Function 1: clean datasets
#Input: raw datasets and asset ticket
#Output: cleaned dataset with standardized column names, dates, and adjusted closing price

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
#Function 2: extract monthly data
#Input: cleaned daily market dataset
#Output: dataset containing price observation for each month

# Function 2: Extract monthly data
# Input: Cleaned daily market dataset.
# Output: Dataset containing the last available trading-day
# observation for each month.

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

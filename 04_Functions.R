# Cleaning Data Functions
#---------------------------------------- 
#Function 1: clean datasets
#Input: raw datasets and asset ticket
#Output: cleaned dataset with standardized column names, dates, and adjusted closing price

clean_market_data <- function(data, asset_name) {
  cleaned <- data 
    rename(Adjusted_Close = `Adj Close`)
    mutate(Date = as.Date(Date))
    select(Date, Open, High, Low, Close, Adjusted_Close, Volume) %>%
    filter(
      !is.na(Date),
      !is.na(Adjusted_Close),
      Adjusted_Close > 0
    )
    distinct(Date, .keep_all = TRUE)
    arrange(Date)
    mutate(Asset = asset_name)

  return(cleaned)
}
 
#---------------------------------------- 
#Function 2: extract monthly data
#Input: cleaned daily market dataset
#Output: dataset containing price observation for each month

get_monthly_data <- function(data) {
  monthly_data <- data
    mutate(Month = floor_date(Date, unit = "month"))
    group_by(Month)
    slice_max(
      order_by = Date,
      n = 1,
      with_ties = FALSE
    )
    ungroup()

  return(monthly_data)
}
#---------------------------------------- 

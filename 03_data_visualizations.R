# packages
```{r,message=FALSE, warning=FALSE}
source("00_requirements.R")
load("Output/processed_data.RData")
```
# Plot for the value of a $1,000 initial investment
This visualization compares the growth of an initial $1,000
investment in Bitcoin, the S&P 500, and IEF from January 2020
through September 2026.

```{r}
# line chart investment performance plot
plot(
  lump_sum_results$Month,
  lump_sum_results$Bitcoin_Value,
  type = "l",
  col = "orange",
  lwd = 2,
  ylim = range(
    lump_sum_results[, c(
      "Bitcoin_Value",
      "SP500_Value",
      "IEF_Value"
    )]
  ),
  xlab = "Year",
  ylab = "Investment Value ($)",
  main = "$1,000 Investment Performance"
)

lines(
  lump_sum_results$Month,
  lump_sum_results$SP500_Value,
  col = "blue",
  lwd = 2
)

lines(
  lump_sum_results$Month,
  lump_sum_results$IEF_Value,
  col = "red",
  lwd = 2
)
abline(h = 1000, lty = 2, col = "gray40")
legend(
  "topleft",
  legend = c("Bitcoin", "S&P 500", "Treasury Bond (IEF)", "Initial Investment"),
  col = c("orange", "blue", "red", "gray40"),
  lty = c(1, 1, 1, 2),
  lwd = 2
)
# Final portfolio values
final_lump_sum_values <- data.frame(
  Asset = c("Bitcoin", "S&P 500", "Treasury Bond (IEF)"),
  Portfolio_Value = c(
    tail(lump_sum_results$Bitcoin_Value, 1),
    tail(lump_sum_results$SP500_Value, 1),
    tail(lump_sum_results$IEF_Value, 1)
  )
)
final_lump_sum_values$Portfolio_Value <- paste0(
  "$",
  formatC(
    final_lump_sum_values$Portfolio_Value,format = "f",digits = 2,big.mark = ",")
)
print(final_lump_sum_values, row.names = FALSE)
```
# Line Plot for the value of investing $500 monthly
```{r}
plot(
  monthly_investment_results$Month,
  monthly_investment_results$Bitcoin_Value,
  type = "l",
  col = "orange",
  lwd = 2,
  ylim = range(
    monthly_investment_results[, c(
      "Bitcoin_Value",
      "SP500_Value",
      "IEF_Value"
    )]
  ),
  xlab = "Year",
  ylab = "Portfolio Value ($)",
  main = "Portfolio Value: $500 Monthly Investment"
)

lines(
  monthly_investment_results$Month,
  monthly_investment_results$SP500_Value,
  col = "blue",
  lwd = 2
)
lines(
  monthly_investment_results$Month,
  monthly_investment_results$IEF_Value,
  col = "red",
  lwd = 2
)
lines(
  monthly_investment_results$Month,
  monthly_investment_results$Total_Invested,
  col = "gray40",
  lwd = 2,
  lty = 2
)

legend(
  "topleft",
  legend = c(
    "Bitcoin Portfolio",
    "S&P 500 Portfolio",
    "Treasury (IEF) Portfolio",
    "Total Contributions"
  ),
  col = c("orange", "blue", "red", "gray40"),
  lty = c(1, 1, 1, 2),
  lwd = 2
)
#final value of portfolio
final_portfolio_values <- data.frame(
  Asset = c("Bitcoin", "S&P 500", "IEF"),
  Portfolio_Value = c(
    tail(monthly_investment_results$Bitcoin_Value, 1),
    tail(monthly_investment_results$SP500_Value, 1),
    tail(monthly_investment_results$IEF_Value, 1)
  )
)
final_portfolio_values$Portfolio_Value <- paste0(
  "$",
  formatC(final_portfolio_values$Portfolio_Value,format = "f",digits = 2,big.mark = ",")
)
print(final_portfolio_values, row.names = FALSE)
```
# Comparison for the distribution of monthly returns
The boxplot compares the distribution of monthly returns for Bitcoin, the S&P 500, and IEF from January 2020 through September 2026.
```{r}
boxplot(
  monthly_returns$Bitcoin_Return,
  monthly_returns$SP500_Return,
  monthly_returns$IEF_Return,
  names = c("Bitcoin", "S&P 500", "Treasury Bond (IEF)"),
  col = c("orange", "blue", "red"),
  ylab = "Monthly Return",
  xlab = "Asset",
  main = "Distribution of Monthly Returns",
  outline = TRUE
)
abline(h = 0, lty = 2, col = "gray40")
```
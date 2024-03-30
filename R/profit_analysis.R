#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit each month 
profit <- revenue-expenses
# profit after tax
tax = round((profit * 0.30),digits = 2)

#profit after tax
profit.after.tax <- profit - tax
#profit margin

profit.margin = round(profit.after.tax/revenue, digits = 2)*100

#GOOD MONTHS
mean_pro = mean(profit.after.tax)

good_months <- profit.after.tax > mean_pro

#badmonts
bad_month <- !good_months

#best month
best.month <- profit.after.tax == max(profit.after.tax)

#worst mth 
worst.month <- profit.after.tax == min(profit.after.tax)

#units of 1000
revenue.1000 <- round(revenue/1000,0)
expenses.1000 <- round(expenses/1000,0)
profit.1000 <- round(profit/1000,0)
profit.after.tax.1000 <-round(profit.after.tax/1000,0)

#output final 
revenue.1000
expenses.1000
profit.1000
tax
profit.after.tax.1000
good_months
bad_month
best.month
worst.month

#matrix

m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  good_months,
  bad_month,
  best.month,
  worst.month
  )
m

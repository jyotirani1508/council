
marketingbudget <- read_csv("Programs/marketingbudget.csv")
View(marketingbudget)
# Plot the relationship between Spend and Sales
plot(marketingbudget$Spend, marketingbudget$Sales, col = "blue", lwd = 1,
     xlab = "Spend", ylab = "Sales", main = "Relationship between Sales and Spend")

# Calculate the Pearson correlation between Sales and Spend
cor(marketingbudget$Sales, marketingbudget$Spend, method = "pearson")

# Conduct a Pearson correlation test
cor.test(marketingbudget$Sales, marketingbudget$Spend, method = "pearson", alternative = "greater")

# Run a linear regression of Sales on Spend
reg <- lm(Sales ~ Spend, data = marketingbudget)
summary(reg)

# Add the regression line to the plot
abline(reg, col = "red")

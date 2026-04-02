# ============================================================
# Program 6: Scatter Plot (Base R) - Weight vs Mileage
# ============================================================
# Description: Creates a scatter plot using base R plot()
#              to visualize the relationship between car weight
#              and mileage from the mtcars dataset.
# Output: scatterplot.png
# ============================================================

data <- mtcars[, c("wt", "mpg")]

png(file = "outputs/scatterplot.png")
plot(x = data$wt,
     y = data$mpg,
     xlab = "Weight",
     ylab = "Mileage",
     xlim = c(2.5, 5),
     ylim = c(15, 30),
     main = "Weight vs Mileage")
dev.off()

cat("Scatter plot saved to outputs/scatterplot.png\n")

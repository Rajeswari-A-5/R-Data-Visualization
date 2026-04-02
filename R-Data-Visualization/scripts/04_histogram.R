# ============================================================
# Program 4: Histogram - Weight Distribution
# ============================================================
# Description: Creates a histogram with custom x/y axis limits
#              and break points using a sample weight dataset.
# Output: histogram_chart_lim.png
# ============================================================

v <- c(12, 24, 16, 38, 21, 13, 55, 17, 39, 10, 60)

png(file = "outputs/histogram_chart_lim.png")
hist(v,
     xlab = "Weight",
     ylab = "Frequency",
     col = "green",
     border = "red",
     xlim = c(0, 60),
     ylim = c(0, 5),
     breaks = 5,
     main = "Weight Histogram")
dev.off()

cat("Histogram saved to outputs/histogram_chart_lim.png\n")

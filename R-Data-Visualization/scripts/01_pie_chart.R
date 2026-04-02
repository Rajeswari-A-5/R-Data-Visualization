# ============================================================
# Program 1: Pie Chart - Country Distribution
# ============================================================
# Description: Creates a pie chart showing country-wise data
#              using base R graphics with rainbow colors.
# Output: title_color.jpg
# ============================================================

x <- c(20, 65, 15, 50)
labels <- c("India", "America", "Sri Lanka", "Nepal")

png(file = "outputs/title_color.png")
pie(x, labels, main = "Country Pie Chart", col = rainbow(length(x)))
dev.off()

cat("Pie chart saved to outputs/title_color.png\n")

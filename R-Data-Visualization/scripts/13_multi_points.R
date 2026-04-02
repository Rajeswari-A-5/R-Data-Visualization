# ============================================================
# Program 13: Multi-Series Scatter Plot using points()
# ============================================================
# Description: Adds multiple point series to a base scatter
#              plot using points() with different colors and
#              point shapes (pch) per series.
# Output: multi_points.png
# ============================================================

sample_data <- data.frame(
  x  = c(1, 2, 3, 4, 5),
  y1 = c(7, 10, 26, 39, 5),
  y2 = c(4, 14, 16, 29, 15),
  y3 = c(2, 13, 36, 19, 25),
  y4 = c(8, 11,  6,  9, 35)
)

png(file = "outputs/multi_points.png")
plot(sample_data$x, sample_data$y1,
     ylim = c(0, 45),
     main = "Multi-Series Scatter Plot",
     xlab = "X",
     ylab = "Y")
points(sample_data$x, sample_data$y2, col = "green", pch = 12)
points(sample_data$x, sample_data$y3, col = "red",   pch = 13)
points(sample_data$x, sample_data$y4, col = "blue")
legend("topright",
       legend = c("y1 (default)", "y2 (green)", "y3 (red)", "y4 (blue)"),
       col = c("black", "green", "red", "blue"),
       pch = c(1, 12, 13, 1))
dev.off()

cat("Multi-series scatter plot saved to outputs/multi_points.png\n")

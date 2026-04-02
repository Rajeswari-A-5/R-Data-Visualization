# ============================================================
# Program 12: Multi-Line Plot using lines()
# ============================================================
# Description: Plots multiple lines on the same graph using
#              plot() for the first series and lines() for
#              subsequent series with different colors and styles.
# Output: multi_line.png
# ============================================================

sample_data <- data.frame(
  x  = c(1, 2, 3, 4, 5),
  y1 = c(7, 10, 26, 39, 5),
  y2 = c(4, 14, 16, 29, 15),
  y3 = c(2, 13, 36, 19, 25),
  y4 = c(8, 11,  6,  9, 35)
)

png(file = "outputs/multi_line.png")
plot(sample_data$x, sample_data$y1,
     type = "l",
     ylim = c(0, 45),
     main = "Multi-Line Plot",
     xlab = "X",
     ylab = "Y")
lines(sample_data$x, sample_data$y2, col = "green", lwd = 2)
lines(sample_data$x, sample_data$y3, col = "red",   lwd = 1)
lines(sample_data$x, sample_data$y4, col = "blue",  lty = "dashed")
legend("topright",
       legend = c("y1", "y2 (green)", "y3 (red)", "y4 (blue dashed)"),
       col = c("black", "green", "red", "blue"),
       lty = c(1, 1, 1, 2))
dev.off()

cat("Multi-line plot saved to outputs/multi_line.png\n")

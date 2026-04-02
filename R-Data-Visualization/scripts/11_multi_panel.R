# ============================================================
# Program 11: Multi-Panel Plot (par mfrow)
# ============================================================
# Description: Demonstrates side-by-side plots using par(mfrow)
#              to display two plots in a single row — one as a
#              line plot and one as a scatter with multiple colors.
# Output: multi_panel.png
# ============================================================

x <- seq(-pi, pi, 0.1)
y <- sin(x)

png(file = "outputs/multi_panel.png", width = 900, height = 450)
par(mfrow = c(1, 2))

# Left panel: line plot
plot(x, y, type = "l", main = "Sine Wave (Line)")

# Right panel: scatter plot with colored points
plot(x, y,
     pch = c(4, 5, 6),
     col = c("red", "blue", "violet", "green"),
     main = "Sine Wave (Scatter)")

dev.off()

cat("Multi-panel plot saved to outputs/multi_panel.png\n")

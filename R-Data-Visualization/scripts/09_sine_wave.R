# ============================================================
# Program 9: Sine Wave Plot
# ============================================================
# Description: Plots a sine wave using a sequence of x values
#              from -pi to pi, demonstrating mathematical
#              function visualization in R.
# Output: sine_wave.png
# ============================================================

x <- seq(-pi, pi, 0.1)
y <- sin(x)

png(file = "outputs/sine_wave.png")
plot(x, y,
     main = "Sine Wave",
     xlab = "x (radians)",
     ylab = "sin(x)",
     type = "l",
     col = "blue",
     lwd = 2)
dev.off()

cat("Sine wave saved to outputs/sine_wave.png\n")

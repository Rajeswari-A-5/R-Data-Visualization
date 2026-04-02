# ============================================================
# Program 8: Plot Customization - Point Styles & Line Types
# ============================================================
# Description: Demonstrates various plot customization options
#              including point shapes (pch), colors (col),
#              sizes (cex), line types (lty), and line widths (lwd).
# ============================================================

# Custom styled plot with points and line
plot(1:10,
     main = "My Graph",
     xlab = "The x-axis",
     ylab = "The Y axis",
     col = "red",
     pch = 25,
     cex = 2,
     type = "b",
     lwd = 5,
     lty = 3)

cat("Customization demo plotted (interactive window).\n")
cat("Add png()/dev.off() wrappers to save to file.\n")

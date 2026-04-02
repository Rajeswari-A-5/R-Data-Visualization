# ============================================================
# Program 10: Styled Line Graph - Custom Colors & Line Types
# ============================================================
# Description: Creates a styled line graph with custom colors,
#              line type (lty), line width (lwd), and a blue
#              title using col.main parameter.
# Output: styled_line_graph.png
# ============================================================

png(file = "outputs/styled_line_graph.png")
plot(c(1, 3, 5, 7, 9, 11),
     c(2, 7, 5, 10, 8, 10),
     type = "o",
     lty = 3,
     col = "pink",
     lwd = 4,
     main = "This is a Graph",
     col.main = "blue",
     xlab = "X Values",
     ylab = "Y Values")
dev.off()

cat("Styled line graph saved to outputs/styled_line_graph.png\n")

# ============================================================
# Program 14: ggplot2 - Grouped Scatter Plot (Basic)
# ============================================================
# Description: Creates a scatter plot using ggplot2 with color
#              mapped to a grouping variable using aes(color).
# Requires: ggplot2 (install with: install.packages("ggplot2"))
# Output: ggplot_grouped_scatter.png
# ============================================================

library(ggplot2)

data <- data.frame(
  x     = c(1, 2, 3, 4),
  y     = c(5, 6, 7, 8),
  group = c("A", "A", "B", "B")
)

png(file = "outputs/ggplot_grouped_scatter.png")
ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point()
dev.off()

cat("ggplot2 grouped scatter saved to outputs/ggplot_grouped_scatter.png\n")

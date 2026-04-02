# ============================================================
# Program 16: ggplot2 - Scatter + Line Combination
# ============================================================
# Description: Layers geom_point() and geom_line() on the same
#              ggplot to combine scatter and line visualization.
# Requires: ggplot2 (install with: install.packages("ggplot2"))
# Output: ggplot_point_line.png
# ============================================================

library(ggplot2)

data <- data.frame(
  x     = c(1, 2, 3, 4),
  y     = c(5, 6, 7, 8),
  group = c("A", "A", "B", "B")
)

png(file = "outputs/ggplot_point_line.png")
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_line()
dev.off()

cat("ggplot2 scatter+line combo saved to outputs/ggplot_point_line.png\n")

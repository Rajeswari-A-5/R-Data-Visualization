# ============================================================
# Program 17: ggplot2 - Subset-Based Color & Line
# ============================================================
# Description: Demonstrates filtering data subsets within
#              geom_point() and geom_line() to apply different
#              colors to different groups on the same plot.
# Requires: ggplot2 (install with: install.packages("ggplot2"))
# Output: ggplot_subset.png
# ============================================================

library(ggplot2)

data <- data.frame(
  x     = c(1, 2, 3, 4),
  y     = c(5, 6, 7, 8),
  group = c("A", "A", "B", "B")
)

png(file = "outputs/ggplot_subset.png")
ggplot(data, aes(x = x, y = y)) +
  geom_point(data = subset(data, group == "A"), color = "red") +
  geom_line(data  = subset(data, group == "B"), color = "blue")
dev.off()

cat("ggplot2 subset plot saved to outputs/ggplot_subset.png\n")

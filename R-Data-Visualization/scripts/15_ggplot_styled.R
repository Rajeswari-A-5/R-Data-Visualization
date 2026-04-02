# ============================================================
# Program 15: ggplot2 - Fully Styled Scatter Plot
# ============================================================
# Description: Demonstrates ggplot2 theming options including
#              ggtitle(), xlab(), ylab(), theme_bw(), legend
#              positioning, and rotated axis text.
# Requires: ggplot2 (install with: install.packages("ggplot2"))
# Output: ggplot_styled.png
# ============================================================

library(ggplot2)

data <- data.frame(
  x     = c(1, 2, 3, 4),
  y     = c(5, 6, 7, 8),
  group = c("A", "A", "B", "B")
)

png(file = "outputs/ggplot_styled.png")
ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point() +
  ggtitle("My Plot") +
  xlab("X-axis label") +
  ylab("Y-axis label") +
  theme_bw() +
  theme(
    legend.position = "top",
    axis.text.x = element_text(size = 12, angle = 45)
  )
dev.off()

cat("ggplot2 styled scatter saved to outputs/ggplot_styled.png\n")

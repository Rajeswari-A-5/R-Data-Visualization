# ============================================================
# Program 7: Scatter Plot (ggplot2) - drat vs mpg
# ============================================================
# Description: Creates a scatter plot using ggplot2 library
#              visualizing rear axle ratio (drat) vs miles per
#              gallon from the mtcars dataset.
# Output: scatterplot_ggplot.png
# Requires: ggplot2 (install with: install.packages("ggplot2"))
# ============================================================

library(ggplot2)

png(file = "outputs/scatterplot_ggplot.png")
ggplot(mtcars, aes(x = drat, y = mpg)) +
  geom_point()
dev.off()

cat("ggplot2 scatter plot saved to outputs/scatterplot_ggplot.png\n")

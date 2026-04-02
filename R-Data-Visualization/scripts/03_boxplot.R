# ============================================================
# Program 3: Boxplot - MPG vs Cylinders (mtcars dataset)
# ============================================================
# Description: Creates a boxplot comparing miles per gallon
#              against number of cylinders using the built-in
#              mtcars dataset.
# Output: boxplot.png
# ============================================================

png(file = "outputs/boxplot.png")
boxplot(mpg ~ cyl,
        data = mtcars,
        xlab = "Quantity of Cylinders",
        ylab = "Miles Per Gallon",
        main = "R Boxplot Example")
dev.off()

cat("Boxplot saved to outputs/boxplot.png\n")

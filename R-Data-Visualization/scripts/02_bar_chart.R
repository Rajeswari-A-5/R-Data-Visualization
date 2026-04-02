# ============================================================
# Program 2: Bar Chart - Monthly Revenue
# ============================================================
# Description: Creates a bar chart showing monthly revenue data
#              with custom axis labels, colors, and border.
# Output: bar_properties.png
# ============================================================

H <- c(12, 35, 54, 3, 41)
M <- c("Feb", "Mar", "Apr", "May", "Jun")

png(file = "outputs/bar_properties.png")
barplot(H,
        names.arg = M,
        xlab = "Month",
        ylab = "Revenue",
        col = "Green",
        main = "Revenue Bar Chart",
        border = "red")
dev.off()

cat("Bar chart saved to outputs/bar_properties.png\n")

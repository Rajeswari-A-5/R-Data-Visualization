# ============================================================
# Program 5: Line Graph - Monthly Temperature
# ============================================================
# Description: Creates a line graph showing temperature trends
#              across months using overplotted points and lines.
# Output: line_graph_feature.png
# ============================================================

v <- c(13, 22, 28, 7, 31)

png(file = "outputs/line_graph_feature.png")
plot(v,
     type = "o",
     col = "green",
     xlab = "Month",
     ylab = "Temperature",
     main = "Monthly Temperature Trend")
dev.off()

cat("Line graph saved to outputs/line_graph_feature.png\n")

# 📝 R Visualization — Quick Reference Notes

## Base R Graphics Functions

| Function | Purpose | Key Parameters |
|----------|---------|----------------|
| `plot()` | General-purpose plot | `type`, `col`, `pch`, `lty`, `lwd`, `cex` |
| `pie()` | Pie chart | `labels`, `col`, `main` |
| `barplot()` | Bar chart | `names.arg`, `xlab`, `ylab`, `col`, `border` |
| `boxplot()` | Box plot | formula (`y ~ x`), `data`, `xlab`, `ylab` |
| `hist()` | Histogram | `breaks`, `xlim`, `ylim`, `col`, `border` |
| `lines()` | Add line to plot | `col`, `lwd`, `lty` |
| `points()` | Add points to plot | `col`, `pch` |
| `par(mfrow)` | Multi-panel layout | `c(rows, cols)` |

## Plot Type Codes (`type=`)

| Code | Meaning |
|------|---------|
| `"p"` | Points only |
| `"l"` | Lines only |
| `"o"` | Points + overlaid lines |
| `"b"` | Points + lines (with gaps) |
| `"s"` | Step function |
| `"n"` | No plotting (axes only) |

## Point Shape Codes (`pch=`)

| Value | Shape |
|-------|-------|
| 1 | Circle (default) |
| 4 | Cross (×) |
| 5 | Diamond |
| 6 | Triangle (down) |
| 12 | Square with plus |
| 13 | Circle with cross |
| 25 | Triangle (filled, down) |

## Line Type Codes (`lty=`)

| Value | Style |
|-------|-------|
| 1 | Solid (default) |
| 2 | Dashed |
| 3 | Dotted |
| 4 | Dot-Dash |

## Saving Plots to File

```r
png(file = "outputs/myplot.png")   # Open device
# ... your plot code here ...
dev.off()                          # Close device and save
```

Other formats: `jpeg()`, `pdf()`, `svg()`

---

## ggplot2 Cheat Sheet

### Basic Template

```r
library(ggplot2)

ggplot(data, aes(x = col1, y = col2)) +
  geom_point()        # or geom_line(), geom_bar(), etc.
```

### Common Geoms

| Geom | Chart Type |
|------|-----------|
| `geom_point()` | Scatter plot |
| `geom_line()` | Line chart |
| `geom_bar()` | Bar chart |
| `geom_histogram()` | Histogram |
| `geom_boxplot()` | Box plot |

### Aesthetics (`aes()`)

| Aesthetic | Controls |
|-----------|---------|
| `x`, `y` | Position |
| `color` | Point/line color |
| `fill` | Fill color |
| `size` | Point size |
| `shape` | Point shape |
| `group` | Grouping |

### Themes

```r
theme_bw()       # Black & white
theme_minimal()  # Minimal
theme_classic()  # Classic axes
theme_void()     # No axes
```

### Labels & Titles

```r
ggtitle("Main Title")
xlab("X Label")
ylab("Y Label")
labs(title = "Title", x = "X", y = "Y", color = "Group")
```

### Legend Position

```r
theme(legend.position = "top")    # top / bottom / left / right / none
```

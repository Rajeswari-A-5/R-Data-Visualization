# ============================================================
# run_all.R — Run All Visualization Programs
# ============================================================
# Description: Sources every script in order and saves all
#              output plots to the outputs/ directory.
#              Run from the project root directory.
# Usage: Rscript run_all.R
# ============================================================

# Ensure the outputs directory exists
if (!dir.exists("outputs")) dir.create("outputs")

scripts <- list.files("scripts", pattern = "\\.R$", full.names = TRUE)
scripts <- sort(scripts)  # Ensure numeric order (01_, 02_, ...)

cat("==============================================\n")
cat(" R Data Visualization — Running All Scripts\n")
cat("==============================================\n\n")

for (script in scripts) {
  cat(sprintf("▶  Running: %s\n", basename(script)))
  tryCatch(
    source(script),
    error = function(e) cat(sprintf("   ✗ Error: %s\n", e$message))
  )
}

cat("\n✔ All scripts finished. Check the outputs/ folder for plots.\n")

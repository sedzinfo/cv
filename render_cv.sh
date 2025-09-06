#!/bin/bash
# build_cv.sh - render CV Rmarkdown into PDF

# fail on first error
set -e

# Move into the script directory (so relative paths work)
cd "$(dirname "$0")"

# Run Rscript with rmarkdown::render
Rscript -e "rmarkdown::render('cv.Rmd', output_format='pdf_document')"

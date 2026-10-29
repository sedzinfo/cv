#!/bin/bash
# build_cv.sh - render CV Rmarkdown into PDF

# fail on first error
set -e

# Move into the script directory (so relative paths work)
cd "$(dirname "$0")"

# Run Rscript with rmarkdown::render
# cv_v0: the original CV, cv_v1: the new one (with Projects)
Rscript -e "rmarkdown::render('cv_v0.Rmd', output_format='pdf_document')"
Rscript -e "rmarkdown::render('cv_v1.Rmd', output_format='pdf_document')"

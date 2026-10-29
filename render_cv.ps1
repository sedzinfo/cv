# Change to the script's directory
Set-Location -Path $PSScriptRoot
# Render the Rmd file
Rscript -e "rmarkdown::render('cv_v0.Rmd')"
Rscript -e "rmarkdown::render('cv_v1.Rmd')"
Pause
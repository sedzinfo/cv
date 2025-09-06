# Change to the script's directory
Set-Location -Path $PSScriptRoot
# Render the Rmd file
Rscript -e "rmarkdown::render('cv.Rmd')"
Pause
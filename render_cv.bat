@echo off
REM Change to the directory of this script
cd /d "%~dp0"
REM Run Rscript to render the Rmd file
Rscript -e "rmarkdown::render('cv_v0.Rmd')"
Rscript -e "rmarkdown::render('cv_v1.Rmd')"
pause
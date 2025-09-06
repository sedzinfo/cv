@echo off
REM Change to the directory of this script
cd /d "%~dp0"
REM Run Rscript to render the Rmd file
Rscript -e "rmarkdown::render('cv.Rmd')"
pause
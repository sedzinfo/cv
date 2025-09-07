# CV (Curriculum Vitae)

This repository contains the source code and data for generating a professional CV (Curriculum Vitae) using R Markdown and LaTeX. The workflow is designed for reproducibility and easy updates, with data stored in an Excel file and rendering scripts for multiple platforms.

## Features
- **Dynamic CV generation**: Main content and sections are read from `cv.xlsx` and rendered via `cv.Rmd`.
- **PDF output**: Produces a high-quality PDF using LaTeX and the `lualatex` engine.
- **Cross-platform rendering**: Includes scripts for Linux (`render_cv.sh`), Windows (`render_cv.bat`), and PowerShell (`render_cv.ps1`).
- **Customizable**: Easily update your CV by editing the Excel file or R Markdown template.

## File Overview
- `cv.Rmd` — Main R Markdown template for the CV. Reads data from `cv.xlsx` and renders to PDF.
- `cv.xlsx` — Excel file containing your work experience, education, skills, and personal details.
- `cv.tex` — Generated LaTeX file (output from rendering, not meant for direct editing).
- `render_cv.sh` — Bash script to render the CV on Linux/macOS.
- `render_cv.bat` — Batch script to render the CV on Windows.
- `render_cv.ps1` — PowerShell script to render the CV on Windows.

## Requirements
- [R](https://www.r-project.org/) (with packages: `rmarkdown`, `openxlsx`, `knitr`)
- [Pandoc](https://pandoc.org/) (usually comes with RStudio)
- [LaTeX](https://www.latex-project.org/) distribution (e.g., TeX Live, MikTeX)
 Fonts: Roboto (or edit the font in `cv.Rmd`)

 ## Installation Instructions

 ### Install R

 #### On Linux (Debian/Ubuntu)
 ```bash
 sudo apt update
 sudo apt install r-base
 ```

 For the latest version, see the [CRAN Linux instructions](https://cran.r-project.org/bin/linux/ubuntu/).

 #### On Fedora
 ```bash
 sudo dnf install R
 ```

 #### On Arch Linux
 ```bash
 sudo pacman -S r
 ```

 #### On Windows
 1. Go to the [R for Windows download page](https://cran.r-project.org/bin/windows/base/).
 2. Download and run the installer (e.g., `R-4.x.x-win.exe`).
 3. Follow the installation prompts.

## How to Render

### On Linux/macOS
```bash
./render_cv.sh
```

### On Windows (Command Prompt)
```
render_cv.bat
```

### On Windows (PowerShell)
```
./render_cv.ps1
```

This will generate a PDF file from your R Markdown template and Excel data.

## Customization
- Edit `cv.xlsx` to update your work experience, education, skills, and personal details.
- Edit `cv.Rmd` to change the template, formatting, or add/remove sections.

## License
See `LICENSE` for details.

# Screenshots
![Alt text](https://github.com/sedzinfo/cv/blob/main/screenshots/cv.png)

---

![Stars](https://img.shields.io/github/stars/sedzinfo/cv)
![Watchers](https://img.shields.io/github/watchers/sedzinfo/cv)
![Repo Size](https://img.shields.io/github/repo-size/sedzinfo/cv)
![Open Issues](https://img.shields.io/github/issues/sedzinfo/cv)
![Forks](https://img.shields.io/github/forks/sedzinfo/cv)
![Last Commit](https://img.shields.io/github/last-commit/sedzinfo/cv)
![Contributors](https://img.shields.io/github/contributors/sedzinfo/cv)
![License](https://img.shields.io/github/license/sedzinfo/cv)
![Release](https://img.shields.io/github/v/release/sedzinfo/cv)
![Workflow Status](https://img.shields.io/github/actions/workflow/status/sedzinfo/cv/main.yml)
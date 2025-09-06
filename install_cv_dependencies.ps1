# install_cv_dependencies.ps1
# Installs R, Pandoc, MikTeX, and DejaVu fonts on Windows (requires admin for some steps)

# Download and install R
Write-Host "Downloading R installer..."
$rInstaller = "R-4.4.0-win.exe"
Invoke-WebRequest -Uri "https://cran.r-project.org/bin/windows/base/$rInstaller" -OutFile $rInstaller
Start-Process -Wait -FilePath ".\$rInstaller"

# Download and install Pandoc
Write-Host "Downloading Pandoc installer..."
$pandocInstaller = "pandoc-3.1.11-windows-x86_64.msi"
Invoke-WebRequest -Uri "https://github.com/jgm/pandoc/releases/download/3.1.11/$pandocInstaller" -OutFile $pandocInstaller
Start-Process -Wait msiexec.exe -ArgumentList "/i $pandocInstaller /qn"

# Download and install MikTeX (LaTeX)
Write-Host "Downloading MikTeX installer..."
$miktexInstaller = "basic-miktex-24.3-x64.exe"
Invoke-WebRequest -Uri "https://miktex.org/download/win/$miktexInstaller" -OutFile $miktexInstaller
Start-Process -Wait -FilePath ".\$miktexInstaller"

# Download and install DejaVu fonts
Write-Host "Downloading DejaVu fonts..."
$fontZip = "dejavu-fonts-ttf-2.37.zip"
Invoke-WebRequest -Uri "https://github.com/dejavu-fonts/dejavu-fonts/releases/download/version_2_37/$fontZip" -OutFile $fontZip
Expand-Archive $fontZip -DestinationPath "dejavu-fonts"
$fontFiles = Get-ChildItem -Path "dejavu-fonts" -Recurse -Include *.ttf
foreach ($font in $fontFiles) {
    Copy-Item $font.FullName -Destination "$env:SystemRoot\Fonts" -Force
}

Write-Host "All dependencies installed. Please reboot if fonts do not appear immediately."

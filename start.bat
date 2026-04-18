@echo off
title VaultGuard
echo Pornesc VaultGuard...

:: Incearca Python 3
python --version >nul 2>&1
if %errorlevel% == 0 (
    start "" "http://localhost:8765"
    python -m http.server 8765
    exit
)

:: Incearca py launcher
py --version >nul 2>&1
if %errorlevel% == 0 (
    start "" "http://localhost:8765"
    py -m http.server 8765
    exit
)

:: Incearca Python3 explicit
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    start "" "http://localhost:8765"
    python3 -m http.server 8765
    exit
)

echo.
echo EROARE: Python nu este instalat!
echo Descarca Python de pe https://www.python.org/downloads/
echo Bifeaza "Add Python to PATH" la instalare!
echo.
pause

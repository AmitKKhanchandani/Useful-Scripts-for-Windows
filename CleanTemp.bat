@echo off
echo =========================================
echo    Windows Temporary Files Cleaner
echo =========================================
echo Please close any open applications first.
echo.

echo [1/3] Cleaning User Temp Folder...
del /q /f /s "%TEMP%\*" >nul 2>&1
for /d %%x in ("%TEMP%\*") do rd /s /q "%%x" >nul 2>&1

echo [2/3] Cleaning Windows System Temp Folder...
del /q /f /s "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%x in ("%SystemRoot%\Temp\*") do rd /s /q "%%x" >nul 2>&1

echo [3/3] Cleaning Prefetch Folder...
del /q /f /s "%SystemRoot%\Prefetch\*" >nul 2>&1

echo.
echo =========================================
echo    Cleanup Finished!
echo =========================================
pause
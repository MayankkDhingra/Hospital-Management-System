@echo off
echo Starting MediCare HMS Frontend...
cd /d "%~dp0frontend"
echo.
echo Frontend running at: http://localhost:5173
echo.
call npm run dev
pause

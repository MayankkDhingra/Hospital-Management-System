@echo off
echo ========================================
echo  MediCare HMS - Startup Script
echo ========================================
echo.

REM Start MongoDB (if installed via winget, mongod should be in PATH)
echo [1/3] Starting MongoDB...
start /B mongod --dbpath C:\data\db > C:\data\db\mongod.log 2>&1
echo   MongoDB starting in background (logs: C:\data\db\mongod.log)
timeout /t 3 /nobreak >nul

REM Seed database
echo [2/3] Seeding database...
cd /d "%~dp0backend"
call npm run seed

REM Start backend
echo [3/3] Starting backend API on port 5000...
start "MediCare API" cmd /c "cd /d %~dp0backend && npm run dev"

echo.
echo ========================================
echo  Backend running at: http://localhost:5000
echo  API health check:  http://localhost:5000/api/health
echo.
echo  Demo login: admin@hospital.com / password123
echo ========================================
pause

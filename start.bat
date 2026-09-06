@echo off
title AEROTRACE AI - Command Center
echo ========================================================
echo  Starting AEROTRACE AI Command Center...
echo ========================================================
echo.
cd /d "%~dp0"

echo [1/2] Checking Node dependencies...
if not exist node_modules (
    echo Installing packages...
    call npm.cmd install
)

echo.
echo [2/2] Launching AEROTRACE AI Server on http://localhost:8080...
echo.
start http://localhost:8080
node server.js
pause

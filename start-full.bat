@echo off
title VAYUDRISHTI - Full Stack Launcher

cd /d "%~dp0"

echo.
echo ==========================================
echo       VAYUDRISHTI AI
echo       FULL STACK LAUNCHER
echo ==========================================
echo.

echo [1/2] Starting Python Intelligence Service...
start "Vayudrishti Python API" cmd /k "cd /d "%~dp0python" && python main.py"

timeout /t 3 /nobreak >nul

echo [2/2] Starting Node.js Gateway...
start "Vayudrishti Node Gateway" cmd /k "cd /d "%~dp0" && node server.js"

timeout /t 3 /nobreak >nul

echo.
echo ==========================================
echo Python API  : http://localhost:8000
echo Node Gateway: http://localhost:8080
echo ==========================================
echo.

start "" "http://localhost:8080"

echo Vayudrishti is running.
echo You can close this launcher window.
echo The servers will continue running.
echo.

exit

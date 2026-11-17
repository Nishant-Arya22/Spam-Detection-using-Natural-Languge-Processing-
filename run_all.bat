@echo off
title Launch VELVET Platform
echo ===================================================
echo Launching VELVET Intelligent Message Security Platform
echo ===================================================
start "VELVET Backend" cmd /c "%~dp0run_backend.bat"
timeout /t 3 /nobreak >nul
start "VELVET Frontend" cmd /c "%~dp0run_frontend.bat"
echo.
echo Both services are launching in separate windows.
echo Frontend will be accessible at: http://localhost:5173
echo Backend API docs available at:  http://127.0.0.1:8000/docs
echo ===================================================
pause

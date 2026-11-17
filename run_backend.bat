@echo off
title VELVET Intelligence - Backend Server
echo ===================================================
echo Starting VELVET FastAPI Backend Server (Port 8000)
echo ===================================================
cd /d "%~dp0backend"
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
pause

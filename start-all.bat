@echo off
echo Starting Frontend and Backend servers...
echo.
echo Starting Backend on port 3001...
start "Backend Server" cmd /k "cd /d %~dp0backend && set PATH=C:\Program Files\nodejs;%PATH% && npm run start:dev"
timeout /t 3 /nobreak >nul
echo.
echo Starting Frontend on port 3000...
start "Frontend Server" cmd /k "cd /d %~dp0frontend && set PATH=C:\Program Files\nodejs;%PATH% && npm start"
echo.
echo Both servers are starting in separate windows.
echo Frontend: http://localhost:3000
echo Backend: http://localhost:3001
pause










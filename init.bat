@echo off
tasklist /FI "IMAGENAME eq firefox.exe" 2>NUL | find /I /N "firefox.exe" >NUL
if "%ERRORLEVEL%"=="0" (
	exit 
) else (
	PUSHD
	cd /d "C:\Program Files\Mozilla Firefox"
	start firefox.exe --kiosk --private-window https://localhost
	POPD
)
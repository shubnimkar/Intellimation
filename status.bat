@echo off
set SERVICE_NAME=W3SVC

sc query %SERVICE_NAME% | findstr /C:"STATE" | find "RUNNING" > nul
if errorlevel 1 (
	echo %SERVICE_NAME% is not running.
) else(
	echo %SERVICE_NAME% is running.
)
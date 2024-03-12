set SERVICE_NAME=W3SVC

sc query %SERVICE_NAME% | find "RUNNING" > nul
if errorlevel 1 (
	echo %SERVICE_NAME% is not running. Starting....
	net start %SERVICE_NAME%
	if errorlevel 1 (
	echo failed to start %SERVICE_NAME%.
	net start %SERVICE_NAME%
	) else (
		echo %SERVICE_NAME% Started Successfully.
	)
	) else (
		echo %SERVICE_NAME% is already running.
	)

pause
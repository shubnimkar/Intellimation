set SERVICE_NAME=W3SVC

sc query %SERVICE_NAME% | find "RUNNING" > nul
if errorlevel 1 (
	echo %SERVICE_NAME% is already stopped.
) else (
	echo %SERVICE_NAME% is running Stopping......
	net stop %SERVICE_NAME%
	if errorlevel 1 (
		echo failed to stop %SERVICE_NAME%.
	) else (
		echo %SERVICE_NAME% Stoped Successfully.
	)
)

pause
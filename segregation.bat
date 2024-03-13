@echo off
setlocal enabledelayedexpansion

set "latest_backup="
set "latest_timestamp=0"
pushd "\\imslprad02\backup\Area51\ftpdownload\Jenkins\Application_deployment\Backups"
for /f "tokens=*" %%a in ('dir /ad /b /o-n backup_*') do (
    set "folder=%%a"
    set "timestamp=!folder:~7,19!"
    if !timestamp! gtr !latest_timestamp! (
        set "latest_timestamp=!timestamp!"
        set "latest_backup=!folder!"
    )
)
echo %latest_backup%
popd

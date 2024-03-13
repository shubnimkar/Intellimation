@echo off
setlocal enabledelayedexpansion

set "latest_backup="
pushd "\\imslprad02\backup\Area51\ftpdownload\Jenkins\Application_deployment\Backups"
for /f "tokens=*" %%a in ('dir /ad /b /o-n backup_*') do (
    set "latest_backup=%%a"
    goto :done
)
:done
echo Latest folder: %latest_backup%
pause
popd

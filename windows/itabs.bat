@echo off
rem Opens multiple tabs in Windows Terminal (wt)
rem Requires Windows Terminal to be installed

rem Check multipass VM state
set VM_NAME=skj
set MP_CMD=multipass launch --name %VM_NAME%

multipass info %VM_NAME% >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=2" %%s in ('multipass info %VM_NAME% ^| findstr /i "State"') do (
        if /i "%%s"=="Running" (
            set MP_CMD=multipass shell %VM_NAME%
        ) else (
            set MP_CMD=multipass start %VM_NAME% && multipass shell %VM_NAME%
        )
    )
)

wt ^
    new-tab --title "iOS" cmd /k "cd /d %USERPROFILE%\Documents\CODE\iOS\OC3.0" ; ^
    new-tab --title "Android" cmd /k "cd /d %USERPROFILE%\Documents\CODE\Android\OC3.0" ; ^
    new-tab --title "MM" cmd /k "mm.bat" ; ^
    new-tab --title "Multipass" cmd /k "%MP_CMD%"

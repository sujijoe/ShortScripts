@echo off

if "%~1"=="" (
    echo Usage: %~n0 ^<branch-name^>
    exit /b 1
)

set BRANCH_NAME=%~1

git checkout "%BRANCH_NAME%"

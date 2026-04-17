@echo off

set /p user_input="Enter commit message: "

git add .

git commit -m "%user_input%"

echo Committed with message: '%user_input%'

for /f "tokens=*" %%b in ('git branch --show-current') do set current_branch=%%b

git push -u origin "%current_branch%"

echo Pushed to origin/%current_branch%

@echo off

for /f "tokens=*" %%b in ('git branch --show-current') do set current_branch=%%b

git push -u origin "%current_branch%"

echo Pushed to origin/%current_branch%

@echo off

for /f "tokens=*" %%b in ('git branch --show-current') do set current_branch=%%b

echo Running command:
echo git reset --hard origin/%current_branch%
git reset --hard "origin/%current_branch%"

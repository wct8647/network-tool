@echo off
color a
mode 45,20
title Network Tool v1.5 - by emirhan47
set /p ping1=" internet dns adress: "
echo Loading Network Information...
:loop
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "SSID" ^| findstr /v "BSSID"') do set ssid=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Description"') do set adapter=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "State"') do set state=%%a
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| find "Signal"') do set signal=%%a
for /f "tokens=4 delims==" %%a in ('ping -n 2 %ping1% ^|find "Average"') do set ping=%%a

cls
echo.
echo  Network:
echo  --------
echo  SSID: %ssid%
echo  ADAPTER: %adapter%
echo  STATE: %state%
echo  SIGNAL: %signal%
echo.
echo  Speed:
echo  ------
echo  Ping:  %ping%
goto loop
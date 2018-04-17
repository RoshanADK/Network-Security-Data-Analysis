echo off
title Sophos Network Scanner
:: This file runs every specified time to execute the specified command. We can collect Network Info and save them in CSV file.

set loopcount= 3
:loop

echo Scanning Started
netsh wlan show networks mode=BSSID | findstr : >> results.txt
echo Writing to TXT file
echo __________________________________________________________________________________________________________  >> results.txt
echo __________________________________________________________________________________________________________  >> results.txt

timeout /t 7 /nobreak

set /a loopcount = loopcount - 1
if %loopcount%==0 goto exitloop
goto loop

:exitloop
echo Done
pause
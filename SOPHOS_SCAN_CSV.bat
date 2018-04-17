echo off
title Sophos Network Scanner
:: This file runs every specified time to execute the specified command. We can collect Network Info and save them in CSV file.

set loopcount= 3
:loop

echo Scanning Started

echo Writing to CSV
echo "SSID","BSSID","RSSI","Quality","CHANNEL","AUTH"  >> results.csv
netsh wlan show networks mode=BSSID | findstr : >> results.csv

timeout /t 5 /nobreak

set /a loopcount = loopcount - 1
if %loopcount%==0 goto exitloop
goto loop

:exitloop
echo Done
pause
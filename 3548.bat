@shift /0
@set b2eextd=C:\Users\issac\AppData\Local\Temp\3546.tmp\3547.tmp\extd.exe
@set extd=@call:extd
@set b2etempfile=C:\Users\issac\AppData\Local\Temp\3546.tmp\3547.tmp\3549.tmp
@echo off
echo Auto APK Installer
echo.
echo.
echo Made by Kosher Apps For Flip
echo.
echo.
echo Waiting for device
adb wait-for-device
adb devices
pause
:Yes
%extd% /browseforfile "Auto APK Installer Made by Kosher Apps For Flip" "" "APK (*.apk)" 
adb install -r -d -t "%result%"
:choice
set /P c=Do you want to install another APK? (Y/N)
if /I "%c%" EQU "Y" goto :Yes
if /I "%c%" EQU "N" goto :No
goto :choice
:No
exit

:extd
@set result=
@%b2eextd% "%~1" "%~2" "%~3" "%~4" "%~5" "%~6" "%~7" "%~8" "%~9" > "%b2etempfile%"
@set /p result= < "%b2etempfile%"
@del "%b2etempfile%"
@goto:eof
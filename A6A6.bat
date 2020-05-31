@shift /0
@echo off
echo LG Exalt Block
echo.
echo.
echo Made by Kosher Apps For Flip
echo.
echo This will uninstall the browser and My Verizon. (More options will follow)
echo.
echo Waiting for device
adb wait-for-device
adb devices
PAUSE
echo In Progress...
adb shell pm uninstall -k --user 0 com.android.browser
adb shell pm uninstall -k --user 0 com.android.captiveportallogin
adb shell pm uninstall -k --user 0 com.vzw.hss.myverizon
echo Done
PAUSE
@ECHO OFF
CLS
echo=
echo=
echo=
echo More Options
ECHO Press 1 to uninstall Email
ECHO Press 2 to Uninstall Messaging
ECHO Press 3 to Uninstall Hotspot
ECHO Press 4 to Uninstall Video
:start
CHOICE /C 1234 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 4 GOTO Video
IF ERRORLEVEL 3 GOTO Hotspot
IF ERRORLEVEL 2 GOTO Messaging
IF ERRORLEVEL 1 GOTO Email

:Email
adb shell pm uninstall -k --user 0 com.lge.email
pause
GOTO start

:Messaging
adb shell pm uninstall -k --user 0 com.verizon.messaging.vzmsgs
adb shell pm uninstall -k --user 0 com.android.mms
pause
GOTO start

:Hotspot
adb shell pm uninstall -k --user 0 com.lge.hotspotlauncher
adb shell pm uninstall -k --user 0 com.lge.hotspotprovision
pause
GOTO start

:Video
adb shell pm uninstall -k --user 0 com.lge.videoplayer
pause
GOTO start
@echo off
title Batch Browser 1.2
mode con: cols=60 lines=30
color b
goto browserquestion
:browserquestion
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo Tested:
echo.
echo 1 - MS Edge
echo 2 - Google Chrome
echo 3 - Firefox
echo.
echo Experimental:
echo.
echo 4 - Other
echo 5 - Custom
echo.
set /p answerbrowser=Your browser: 
if %answerbrowser% == 1 set answerbrowser= msedge.exe
if %answerbrowser% == 2 set answerbrowser= googlechrome.exe
if %answerbrowser% == 3 set answerbrowser= firefox.exe
if %answerbrowser% == 4 goto browserquestionother
if %answerbrowser% == 5 goto browserquestioncustom
goto main
:browserquestionother
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo WARNING:
echo.
echo I did not test these browsers. Expect bugs.
echo.
echo 1 - Brave
echo 2 - Vivaldi
echo.
set /p answerbrowser=Your browser: 
if %answerbrowser% == 1 set answerbrowser= brave.exe
if %answerbrowser% == 2 set answerbrowser= vivaldi.x64.exe
goto main
:browserquestioncustom
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo Type in your browser's file that opens the program.
echo Most browsers have their browser name then exe.
echo (most browsers look like this: "browsername.exe")
echo.
set /p answerbrowser=Your browser: 
goto main
:Url
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
set /p url=Type in a url: 
start %answerbrowser% %url%
echo.
goto main
:search
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo Type in your search (place "_" or "+" as spaces):
echo.
set /p search=
start %answerbrowser% https://www.google.com/search?q=%search%"
echo.
goto main
:main
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo 1 - URL
echo 2 - SEARCH
echo 3 - SETTINGS
echo 4 - EXIT
echo.
set /p answermain=Your choice: 
if %answermain% == 1 goto Url
if %answermain% == 2 goto search
if %answermain% == 3 goto Settings
if %answermain% == 4 goto N
echo If you see this, something went wrong, please restart the program.
pause
exit
:Settings
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo 1 - Change Browser
echo 2 - Go Back to Main Screen
echo.
set /p answersettings=Your choice: 
if %answersettings% == 1 goto browserquestion
if %answersettings% == 2 goto main
echo If you see this, something went wrong, please restart the program.
pause
exit
:N
cls
echo ------------------------------------------------------------
echo                     BATCH BROWSER 1.2
echo ------------------------------------------------------------
echo.
echo Thank you for using Batch Browser :)
echo.
pause
exit
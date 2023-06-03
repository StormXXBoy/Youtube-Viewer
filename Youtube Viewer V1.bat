@ECHO OFF
title YouTube Viewer by StormXXBoy

:SS
set browser=chrome.exe
set playL=30

:MENU
cls
echo.
echo      MENU by StormXXBoy
echo.
echo  1) Start New Bot
echo  2) Exit
echo. 
choice /C 123 /N
if "%errorlevel%"=="1" (
goto NB
) else if "%errorlevel%"=="2" (
exit
)

:NB
cls
echo.
echo  Enter the video url.
set /p "url=> "
echo.
echo.
echo   Enter the amount of runs you want to do.
echo  Max 40-60 recomended.
set /p "runs=> "
echo.
goto SETUP

:SETUP
set URL=%url%
set VIDL=%vidl%
set LENGHT=%LENGHTt%
set RUNS=%runs%
echo   Setup  complete!
echo.
echo   Press any key to start the bot.
pause >NUL
goto NBS

:NBS
cls
echo.
echo   Starting  bot...
echo.
:NBO
start %URL%
set /A RUNS=%RUNS% - 1
cls
echo.
echo   Runs left ^| %RUNS%
echo
timeout /T 3 /NOBREAK >NUL
if NOT "%RUNS%"=="0" (
goto NBO
) else (
set LENGHT=%playL%
goto NBT
)

:NBT
cls
echo.
echo   Time left ^| %LENGHT%s
echo.
timeout /T 1 /NOBREAK >NUL
set /A LENGHT=%LENGHT% - 1
if NOT "%LENGHT%"=="0" (
goto NBT
) else (
goto NBE
)

:NBE
taskkill /F /IM %browser%
cls
echo.
echo   Bot  finished!
echo.
echo   Press any key to go to the home menu.
echo.
pause >NUL
goto MENU
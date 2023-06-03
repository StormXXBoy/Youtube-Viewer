@ECHO OFF
title YT Botting

:MENU
cls
echo.
echo      MENU
echo.
echo  1) Auto  Bot
echo  2) Saved Bots
echo  3) 
echo. 
choice /C 123 /N
if "%errorlevel%"=="1" (
goto AB
) else if "%errorlevel%"=="2" (
goto SB
) else if "%errorlevel%"=="3" (
goto MENU
)

:AB
cls
echo.
echo  Enter the video url.
set /p "url=> "
echo.
echo  Enter the video lenght. (in seconds)
set /p "vidl=> "
echo.
echo  Is your video lenght even or odd.
echo 1) Even
echo 2) Odd
echo.
choice /C 12 /N
echo.
echo  Enter the amount of views you want.
set /p "views=> "
echo.
set URL=%url%
set VIDL=%vidl%
if "%errorlevel%"=="1" (
set /A LENGHTt=%VIDL% / 2
goto EVEN
) else if "%errorlevel%"=="2" (
goto ODD
)
:ODD
set /A LENGHTt=%VIDL% + 1
set /A LENGHTt=%LENGHTt% / 2
:EVEN
set LENGHT=%LENGHTt%
set VIEWS=%views%
set VIEWSk=%VIEWS%
echo    S e t u p   c o m p l e t e !
echo.
echo   Press any key to start the bot.
pause >NUL
goto ABS

:ABS
cls
echo.
echo    S t a r t i n g   b o t . . .
echo.
:ABO
start %URL%
set /A VIEWS=%VIEWS% - 1
timeout /T 3 /NOBREAK >NUL
if NOT "%VIEWS%"=="0" (
goto ABO
) else (
goto ABT
)

:ABT
cls
echo.
echo.
echo   %LENGHT%
echo.
echo.
timeout /T 1 /NOBREAK >NUL
set /A LENGHT=%LENGHT% - 1
if NOT "%LENGHT%"=="0" (
goto ABT
) else (
goto ABE
)

:ABE
taskkill /F /IM chrome.exe
cls
echo.
echo    B o t   f i n i s h e d !
echo.
echo   Would you like to save this bot?
echo  1) Yes
echo  2) No
echo.
choice /C 12 /N
if "%errorlevel%"=="1" (
goto SAVEAB
) else if "%errorlevel%"=="2" (
goto MENU
)

:SAVEAB
cls
echo.
echo  What would you like to save this bot as?
set /p "save=> "
echo.
echo    S a v i n g   b o t . . .
echo.
echo  Saving  BOT TYPE
echo AB> %save%.bot
echo  Saving  URL
echo %url%>> %save%.bot
echo  Saving  VIDEO LENGHT
echo %LENGHTt%>> %save%.bot
echo  Saving  VIEWS AMOUNT
echo %VIEWSk%>> %save%.bot
echo.
echo    B o t   s a v e d !
echo.
echo  Press any key to continue.
pause >NUL
goto MENU

:SB
cls
echo.
echo  Enter bot name.
set /p "bot=> "
if EXIST "%bot%.bot" (
goto SBC
) else (
goto SBN
)
:SBC
<%bot%.bot (
set /p TYPE=
set /p URL=
set /p LENGHT=
set /p VIEWS=
)
if "%TYPE%"=="AB" (
goto SAB
)

:SAB
cls
echo.
echo  %TYPE%
echo  %URL%
echo  %VIDL%
echo  %VIEWS%
echo.
echo    S e t u p   c o m p l e t e !
echo.
echo   Press any key to start the bot.
pause >NUL
goto SABS
:SABS
cls
echo.
echo    S t a r t i n g   b o t . . .
echo.
:SABO
start %URL%
set /A VIEWS=%VIEWS% - 1
timeout /T 3 /NOBREAK >NUL
if NOT "%VIEWS%"=="0" (
goto SABO
) else (
goto SABT
)

:SABT
cls
echo.
echo.
echo   %LENGHT%
echo.
echo.
timeout /T 1 /NOBREAK >NUL
set /A LENGHT=%LENGHT% - 1
if NOT "%LENGHT%"=="0" (
goto SABT
) else (
goto SABE
)

:SABE
taskkill /F /IM chrome.exe
cls
echo.
echo    B o t   f i n i s h e d !
echo.
echo  Press any key to continue.
pause >NUL
goto MENU
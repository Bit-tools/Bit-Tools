@echo off

title BATCH IM FAB-ULOUS!

color e

:menumaincode
echo " ______  __________________ _________ _______  _______  _        _______ "
echo "(  ___ \ \__   __/\__   __/ \__   __/(  ___  )(  ___  )( \      (  ____ \"
echo "| (   ) )   ) (      ) (       ) (   | (   ) || (   ) || (      | (    \/"
echo "| (__/ /    | |      | | _____ | |   | |   | || |   | || |      | (_____ "
echo "|  __ (     | |      | |(_____)| |   | |   | || |   | || |      (_____  )"
echo "| (  \ \    | |      | |       | |   | |   | || |   | || |            ) |"
echo "| )___) )___) (___   | |       | |   | (___) || (___) || (____/\/\____) |"
echo "|/ \___/ \_______/   )_(       )_(   (_______)(_______)(_______/\_______)"
                                                                         
echo THIS PROGRAM IS LICENSED UNDER THE GNU LICENSE V3. THIS GIVES
echo YOU THE RIGHT TO FREELY EDIT AND DISTRIBUTE THIS PROGRAM, AS
echo LONG AS IT REFERANCES BACK TO ME, BIT-TOOLS.
echo (C) Nathan Bayliss
echo *
echo *
echo *
for /f "tokens=2 delims=[]" %%x in ('ver') do set WINVER=%%x
set WINVER=%WINVER:Version =%

echo *
echo Versh =1=
echo running windows %WINVER%
echo welcome %username%

pause >nul

echo welcome %username%. How may I help?
pause >nul

:menumaincode2
cls
echo *
echo.
echo Please reboot.                              (1)
echo.
echo Shutdown my PC.                             (2)
echo.
echo Please stop my computer shutting down.      (3)
echo.
echo Please show me my IP information            (4)
echo.
echo Ping and check if this computer is online.  (5)
echo.
echo Some info about my PC =Slightly Intrusive.= (6)
echo.
echo                    (MENU)
echo.
echo                                           (">")

set /p men1=Enter: 

if %men1% == 1 shutdown -r
if %men1% == 2 goto shutdown1
if %men1% == 3 goto abort1
if %men1% == 4 goto ipconfig
if %men1% == 5 goto IAMNOTASUBMARINE
if %men1% == 6 goto Specs
if %men1% == ">" goto more
goto menumaincode2

:shutdown1
shutdown -s -t 10
cls
goto abort1

:abort1
echo -----------------------------------------------
echo press enter to abort
pause >nul
shutdown -a
cls
goto menumaincode2

:ipconfig
echo -----------------------------------------------
ipconfig
pause >nul
cls
goto menumaincode2

:IAMNOTASUBMARINE
echo -----------------------------------------------
set /p pingme=What IP address do you want me to ping?
ping %pingme%
cls
goto menumaincode2

:Specs
echo -----------------------------------------------
systeminfo
pause >nil
cls
goto menumaincode2

:more
cls
goto submenucode1

:submenucode1
cls
echo Start an app for me. =Not Windows Store Apps= (1)
echo.
echo Kill apps.                                    (2)
echo.
echo Command Prompt -=advanced=-                   (3)
echo.
echo Format !DANGEROUS!                            (4)
echo.
echo Custom Commands (CMD inside environment)      (5)
echo.
echo                    (MENU)
echo.
echo ("<")                                       

set /p men2=Enter: 

if %men2% == 1 goto Apps
if %men2% == 2 goto kill
if %men2% == 3 start CMD.exe
if %men2% == 4 goto format
if %men2% == 5 goto custom
if %men2% == "<" goto menumaincode2
cls
goto submenucode1

:Apps
echo -----------------------------------------------
echo Which program do you want to open?
echo.
echo 1) chrome
echo 2) firefox
echo 3) paint
echo 4) calculator
echo 5) sticky notes
echo 6) Explorer
echo 7) Manual
echo 10) Go back

set /p app=Enter:  

if %app% == 1 start chrome.exe
if %app% == 2 start firefox.exe
if %app% == 3 start mspaint.exe
if %app% == 4 start calc.exe
if %app% == 5 start stikynot.exe
if %app% == 6 start explorer.exe
if %app% == 7 goto customapp
if %app% == 10 goto submenucode1
cls
goto apps

:customapp
echo -----------------------------------------------
set /p app2=App name (Doesn't always work.):
start %app2%.exe
cls
goto submenucode1

:kill
echo -----------------------------------------------
echo Which app to kill?
echo.
echo 1) Chrome
echo 2) Firefox
echo 3) Explorer
echo 4) Calculator -=Not Win10=-
echo 5) Sticky Notes
echo 6) Paint
echo 7) Custom (DANGEROUS! USEAT YOUR OWN RISK!)
echo 10)Back

set /p killer=Enter: 
if %killer% == 1 taskkill /IM chrome.exe /F
if %killer% == 2 taskkill /IM firefox.exe /F
if %killer% == 3 taskkill /IM explorer.exe /F
if %killer% == 4 taskkill /IM calc.exe /F
if %killer% == 5 taskkill /IM stikynot.exe /F
if %killer% == 6 taskkill /IM mspaint.exe /F
if %killer% == 7 goto customkill
if %killer% == 10 goto submenucode1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
goto submenucode1

:customkill


:format
echo -----------------------------------------------
set /p drive=Drive letter (ACCURATE!):
echo.
set /p format=Format (fat32 or NTFS):
echo.
set /p quick=Quick format?(Y/N)
if %quick% == Y goto quickf
if %quick% == y goto quickf
if %quick% == N goto fformat
if %quick% == n goto fformat
goto format

:quickf
echo -----------------------------------------------
format %drive%  /q /fs:%format%
goto submenucode1

:fformat
echo -----------------------------------------------
format %drive% /fs:%format%
goto submenucode1

:custom
echo -----------------------------------------------
set /p command=Command:
%Command%
pause >nil
cls
goto submenucode1
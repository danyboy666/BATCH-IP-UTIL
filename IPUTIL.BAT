@echo off
cls
set array=1 2 3 4 5 6 7 8 9 10 11 12 13
rem command /c exit 0
:main
echo.
echo *------------------------------------*
echo   Executing %0 batch script
echo.
echo  IP - %1
echo.                                     
echo.                                     
echo  P - Ping
echo  Q - Quit
echo.                                     
echo *------------------------------------*
echo.
echo enter the IP adress and type "P" to 
echo launch ping command. 
echo Type in "Q" at  any time to quit batch. 
choice /c:1234567890pq. /N
rem echo.
for %%a in (%array%) do if errorlevel %%a set error=%%a
goto fn%error%
rem command /c exit 0
goto :end

:fn13
%0 %1.
goto :end

:fn12
echo quitting batch script
goto :end

:fn11
rem %0 %1%error%
echo ping %1
if "%1"=="" goto :end
if not %1=="" ping %1
goto :end

:fn10
%0 %10
goto :end

:fn9
%0 %1%error%
goto :end

:fn8
%0 %1%error%
goto :end

:fn7
%0 %1%error%
goto :end

:fn6
%0 %1%error%
goto :end

:fn5
%0 %1%error%
goto :end

:fn4
%0 %1%error%
goto :end

:fn3
echo 
goto :end

:fn2
%0 %1%error%
goto :end

:fn1
%0 %1%error%
goto :end

:end
echo Quit

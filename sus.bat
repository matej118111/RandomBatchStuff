@echo off

:entername
title Enter name
echo Enter
echo (Note: Name will not be saved)
set /p name=Enter:
set name=%name%
goto commands

:commands
set S=------------------------------------------------------
set i=was innocent
set t=was the impostor
set ImpostorStatus=null
set sus=null
echo %sus%.
goto impostorcheck

:impostorcheck
echo %S%
if "%sus%"=="true" (
  echo %sus%..
  echo Amongus
  set ImpostorStatus=true
  pause
  goto eject
  echo %S%
) else (
  echo %S%
  echo %sus%...
  echo amongus not detected
  set sus=true
  echo %S%
  pause
  goto impostorcheck
)

:eject
if "%ImpostorStatus%"=="true" (
  title status: Ejecting.
  echo %S%
  title status: Ejecting..
  echo %name% %t%
  title status: impostor was ejected
  echo %S%
  pause
) else (
  echo %S%
  echo %name% %i%
  echo %S%
  pause
)

echo %sus%....
echo %ImpostorStatus%
pause

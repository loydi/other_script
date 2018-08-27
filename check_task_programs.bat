@echo off
SETLOCAL EnableExtensions

set EXE=notepad.exe

FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound

goto ProcessNotFound

:ProcessFound

echo %EXE% is running 
exit 0
goto END
:ProcessNotFound
echo %EXE% is not running 
exit 2
goto END
:END
echo Finished!

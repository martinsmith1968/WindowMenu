@ECHO OFF

SETLOCAL EnableDelayedExpansion

SET APPNAME=WindowExtensions
SET APPDESCRIPTION=Window Extensions Menu and HotKeys
SET APPFILENAME=%APPNAME%.ahk
SET APPVERSION=1.1.0.0
SET EXEFILENAME=%APPNAME%.exe
SET ICONFILENAME=Icons\windows.ico

CALL BuildAHK.cmd -b "%~n0" -a "%APPNAME%" -d "%APPDESCRIPTION%" -f "%APPFILENAME%" -e "%EXEFILENAME%" -i "%ICONFILENAME%" -v "%APPVERSION%" -x

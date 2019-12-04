@ECHO OFF

SETLOCAL EnableDelayedExpansion

PUSHD "%~dp0"

SET APPNAME=WindowExtensions
SET APPDESCRIPTION=Window Extensions Menu and HotKeys
SET APPFILENAME=%APPNAME%.ahk
SET APPVERSION=1.4.0.0
SET EXEFILENAME=%APPNAME%.exe
SET ICONFILENAME=Icons\windows.ico

SET ZIPFILENAME=%APPNAME%.%APPVERSION%.zip

CALL BuildAHK.cmd -b "%~n0" -a "%APPNAME%" -d "%APPDESCRIPTION%" -f "%APPFILENAME%" -e "%EXEFILENAME%" -i "%ICONFILENAME%" -v "%APPVERSION%" %1

IF EXIST "%ZIPFILENAME%" DEL /Q "%ZIPFILENAME%"

ZIP "%ZIPFILENAME%" "%APPNAME%.exe" "%APPNAME%.icl"

POPD

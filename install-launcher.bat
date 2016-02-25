@echo off
pushd %~dp0
SET INSTALLDIR=%APPDATA%\first-discovery\

IF NOT EXIST %INSTALLDIR% mkdir %INSTALLDIR%

:PROMPT
echo.
echo.
echo.
echo Press 1 to create a shortcut with Search preview.
echo Press 2 to create a shortcut with Electron preview.
echo Type exit to abort the installation.
echo.
set /p CHOICE="Make a selection and hit Enter: "
IF %CHOICE%==1 GOTO SEARCHPREVIEW
IF %CHOICE%==2 GOTO ELECTRONPREVIEW
IF %CHOICE%==exit GOTO QUIT


REM If invalid selection (not 1 or 2)
IF NOT %CHOICE%==1 (
    IF NOT %CHOICE%==2 (
        IF NOT %CHOICE%==exit (
        echo That wasn't a valid option...
        GOTO PROMPT
        )
    )
)

:QUIT
EXIT /B

:SEARCHPREVIEW
echo Installing with Search preview...
COPY launcher-search.bat %INSTALLDIR%\launcher.bat
COPY globe-rgb.ico %INSTALLDIR%
COPY globe-bw.ico %INSTALLDIR%
GOTO MKSHORTCUT

:ELECTRONPREVIEW
echo Installing with Electron preview...
COPY launcher-electron.bat %INSTALLDIR%\launcher.bat
COPY globe-rgb.ico %INSTALLDIR%
COPY globe-bw.ico %INSTALLDIR%
GOTO MKSHORTCUT

:MKSHORTCUT
cscript create-shortcut.vbs

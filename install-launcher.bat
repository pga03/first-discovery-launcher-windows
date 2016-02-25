IF EXIST %APPDATA%\first-discovery GOTO MOVEFILES
mkdir %APPDATA%\first-discovery

:MOVEFILES
pushd %~dp0
SET INSTALLDIR = %APPDATA%\first-discovery
COPY %~dp0\launcher.bat %APPDATA%\first-discovery
COPY %~dp0\globe-rgb.ico %APPDATA%\first-discovery
COPY %~dp0\globe-bw.ico %APPDATA%\first-discovery

cscript create-shortcut.vbs

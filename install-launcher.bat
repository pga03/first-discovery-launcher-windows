IF EXIST %APPDATA%\first-discovery GOTO MOVEFILES
mkdir %APPDATA%\first-discovery

:MOVEFILES
pushd %~dp0
SET INSTALLDIR = %APPDATA%\first-discovery
COPY launcher.bat %APPDATA%\first-discovery
COPY globe-rgb.ico %APPDATA%\first-discovery
COPY globe-bw.ico %APPDATA%\first-discovery

cscript create-shortcut.vbs

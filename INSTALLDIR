@echo off

REM Use 64bit Chrome if available
IF NOT EXIST "C:\Program Files\Google\Chrome\Application" GOTO MULTILIB
%CHROMEPATH% = "C:\Program Files\Google\Chrome\Application"
start %CHROMEPATH% chrome.exe http://www.first-discovery.mybluemix.net/demos/prefsServerIntegration --start-maximized
Exit


REM Else, use 32bit Chrome
:MULTILIB
%CHROMEPATH% = "C:\Program Files (x86)\Google\Chrome\Application"
start %CHROMEPATH% chrome.exe http://www.first-discovery.mybluemix.net/demos/prefsServerIntegration --start-maximized

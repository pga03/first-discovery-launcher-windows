Set oShell = CreateObject("WScript.Shell")
Set oWS = WScript.CreateObject("WScript.Shell")


' Make shortcut to launcher on desktop
homeDir = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
appData = oShell.ExpandEnvironmentStrings("%APPDATA%")
installDir = appData + "\first-discovery\"
sLinkFile = homeDir + "\Desktop\" + "Start Here.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
    oLink.TargetPath = installDir + "launcher.bat"
    oLink.IconLocation = installDir + "globe-rgb.ico"
oLink.Save
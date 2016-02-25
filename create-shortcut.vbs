Set oShell = CreateObject("WScript.Shell")
Set oWS = WScript.CreateObject("WScript.Shell")

' Elevate permissions
If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , WScript.ScriptFullName & " /elevate", "", "runas", 1
  WScript.Quit
End If

' Make shortcut to launcher on desktop
homeDir = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
appData = oShell.ExpandEnvironmentStrings("%APPDATA%")
installDir = appData + "\first-discovery\"
sLinkFile = homeDir + "\Desktop\" + "Start Here.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
    oLink.TargetPath = installDir + "launcher.bat"
    oLink.IconLocation = installDir + "globe-rgb.ico"
oLink.Save

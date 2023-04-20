if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Green "Setting Display Resolution to 1600x"
    Set-DisRes 1600
}

$Params = @{
    OSVersion = "Windows 10"
    OSBuild = "22H2"
    OSEdition = "Pro"
    OSLanguage = "de-DE"
    OSLicense = "Retail"
    ZTI = $true
    Firmware = $false
    SkipAutopilot = $true
}
Start-OSDCloud @Params -Restart

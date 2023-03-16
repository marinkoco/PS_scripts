# Script to encrypt a PowerShell script

$scriptPath = "PATH\script.ps1"
$encryptedScriptPath = "PATH\EncryptedScript.txt"

# Create a secure string from the script contents
$secureString = Get-Content -Path $scriptPath | ConvertTo-SecureString -AsPlainText -Force

# Convert the secure string to an encrypted standard string
$encryptedString = ConvertFrom-SecureString -SecureString $secureString

# Save the encrypted string to a file
Set-Content -Path $encryptedScriptPath -Value $encryptedString

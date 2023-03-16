# Script to decrypt an encrypted PowerShell script

$encryptedScriptPath = "PATH\EncryptedScript.txt"

# Read the encrypted string from the file
$encryptedString = Get-Content -Path $encryptedScriptPath

# Convert the encrypted string to a secure string
$secureString = ConvertTo-SecureString -String $encryptedString

# Convert the secure string to a standard string
$command = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureString))

# Create a ScriptBlock object from the standard string
$scriptBlock = [ScriptBlock]::Create($command)

# Run the decrypted script
& $scriptBlock

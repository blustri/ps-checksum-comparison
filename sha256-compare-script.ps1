# simple powershell script to compare SHA-256 checksums
$location = Read-Host -Prompt "Enter the path for the file"
$rootDrive = $location.Substring(0,3)
Set-Location $rootDrive
$originalHash = Read-Host -Prompt "Enter the supposed SHA256 Checksum"
$result1 = Get-FileHash $location | Select-Object -expandProperty Hash
# comparison
Write-Host "Here are the hashes:"
Write-Host "$result1"
Write-Host "$originalHash".ToUpper()
if ($result1 -eq $originalHash) {
    Write-Output "The hashes are equal."
}
else {
    Write-Output "The hashes are not equal, beware!"
}
Pause
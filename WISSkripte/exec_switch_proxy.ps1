cmd.exe -/c "<PATH>\switch_proxy.bat proxy1 proxy2"

$proxy = [System.Net.WebProxy]::GetDefaultProxy() | Select-Object address

write-output $proxy
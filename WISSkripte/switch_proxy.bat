:: Thanks to https://stackoverflow.com/a/41737778
:: switch_proxy.bat
@Echo off
set "Key=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set "Val=ProxyServer"
Set "Typ=REG_SZ"
Set "Proxy1=%1"
Set "Proxy2=%2"
for /f "tokens=3" %%R in (
  'Reg Query "%Key%" /v %Val% ^|find /i "%Val%"'
) do if "%%~R" equ "%Proxy1%" (
   Reg add "%Key%" /v %Val% /t %Typ% /d "%Proxy2%" /f
) else (
   Reg add "%Key%" /v %Val% /t %Typ% /d "%Proxy1%" /f
)
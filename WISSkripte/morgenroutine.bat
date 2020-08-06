::@echo off

:: Office und TFS
start "" "C:\Program Files (x86)\Microsoft Office\Office16\OUTLOOK.exe"
:: OneNote schmeißt, das persönliche Notizbuch immer raus, weil es noch gesperrt ist
::START "" "C:\Program Files (x86)\Microsoft Office\Office16\ONENOTE.exe"
START "" "C:\Program Files (x86)\KeePass Password Safe 2\KeePass.exe"
start "" firefox.exe "http://tfswis.wgs.wuerth.com:8080/tfs/WISCollection/WIS/_versionControl/changesets"
start "" chrome.exe "https://confluence.wgn.wuerth.com/#all-updates" "https://confluence.wgn.wuerth.com/spaces/viewspace.action?key=~wn00121337"

:: Visual Studio + SSMS
:: KMS Solution
::START "" "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe" "D:\SOURCEWIS\WIS\KMS\dev\KMS\KMS.sln"
:: Datenbanken Solution
::START "" "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe" "D:\SOURCEWIS\WIS\Datenbank\dev\Datenbanken\Datenbanken.sln"
:: PROD Skript
::START "" "C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\Ssms.exe"


;Sleep, 12000 ; Nur zu Sicherheit, damit auch Keepass schon gestartet wurde
SetTitleMatchmode, 1 ; Open Database muss am Anfang stehen

IfWinExist, "Open Database"
{
	Run, explorer.exe
}
else
{
	Run, "C:\Program Files (x86)\KeePass Password Safe 2\Keepass.exe"
	Run, Explorer
}

return 
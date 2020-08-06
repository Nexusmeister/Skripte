; Funktioniert 0, muss nochmal überarbeitet werden

SetTitleMatchMode, 3
IfWinActive, Untitled - Message (HTML)
{
	::vg::erzeugeVG()

	::mfg::erzeugeMFG()
}
Else
{
	return
}


;--------------------------- Funktionen ---------------------------

erzeugeVG()
{
	Send VG {Enter}Robin (Kaltenbach)
	return
}

erzeugeMFG()
{
	Send, Mit freundlichen Grüßen {Enter}Robin Kaltenbach
	return	
}
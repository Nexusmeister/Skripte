#Requires AutoHotkey v2.0

/*
^+o::
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
Return
*/

SchliesseWindows()
{
	ids := WinGetList(,, "Program Manager")

	for win_id in ids{
		Try 
		{
			WinActivate(win_id)
			win_title := WinGetTitle(win_id)
			; MsgBox(win_title)

			if isSpace(win_Title)
				continue

			if InStr(win_title, "Nachricht (HTML)")
				continue

			if WinExist(win_title)
				; MsgBox(win_title)
				WinClose(win_title)    
		} catch 
		{
			Continue
		}
	}

	return
}
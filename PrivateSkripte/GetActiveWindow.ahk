#Persistent

Title = ""
WinGetTitle, Title, A


MsgBox, Prüfe Window: "%Title%".
IfInString, Title, OneNote
{
	MsgBox, The active Windows is "%Title%".
}
;MsgBox, The active Windows is "%Title%".
if WinActive("OneNote")

Gui +LastFound 
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
Return

ShellMessage( wParam,lParam )
{
 WinGetTitle, title, ahk_id %lParam%
 If (wParam=4) { ;HSHELL_WINDOWACTIVATED
  ToolTip WinActivated`n%Title%
  sleep 1000
  ToolTip
  Title = ""
	WinGetTitle, Title, A


	MsgBox, Prüfe Window: "%Title%".
 }
}
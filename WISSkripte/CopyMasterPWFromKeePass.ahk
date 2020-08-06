#NoEnv
SendMode Input
#InstallKeybdHook
#SingleInstance force
#MaxHotkeysPerInterval 2000
#HotkeyModifierTimeout, 60

CopyPassword()
{
	SetTitleMatchmode, 2 ; Wir wollen eigentlich nur, dass es sich um ein KeePass-Fenster handelt
	if WinExist("Robin.kdbx")
	{
		WinActivate
		Sleep, 250
		
		Send {Tab}
		Send win
		Send {Down}
		Send {Up}
		Send {Tab}
		Send ^c	
	}
		
}
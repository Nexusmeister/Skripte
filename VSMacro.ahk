#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#InstallMouseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

#IfWinActive ahk_exe devenv.exe ; Shortcut Section für alle Studio Makros
^!y:: OpenCommitChange()


#IfWinActive ; Falls was außerhalb von Studio funktionieren sollte




ShowMousePos() ; Ist nur für Debug-Zwecke
{
    MouseGetPos, xpos, ypos 
    MsgBox, The cursor is at X%xpos% Y%ypos%.
}

OpenCommitChange()
{
    ;MouseMove, 1575, 1014
    MouseClick, Left, 1575, 1014
    Sleep, 1000
    MouseClick, Left, 1578, 200
    MouseMove, 1588, 253

}
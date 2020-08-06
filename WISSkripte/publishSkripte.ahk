#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#InstallMouseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm


FileCopyDir, %A_WorkingDir%, C:\Users\wn00121337\Skripte, 1
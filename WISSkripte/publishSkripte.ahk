SendMode Input
#InstallKeybdHook
#UseHook On
#InstallMouseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

PublishSkripte()
{
    EnvGet, vProfile, USERPROFILE
    FileCopyDir, %A_WorkingDir%, %vProfile%\Skripte, 1
}

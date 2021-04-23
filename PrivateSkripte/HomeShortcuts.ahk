#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#InstallMouseHook On
Menu, Tray, Icon, shell32.dll, 16 ; this changes the tray icon to a computer!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

; ################################################################################################################################
; Include-Section
#Include, %A_ScriptDir%\OpenSemester4InExplorer.ahk


; ################################################################################################################################
; Shortcut-Section
; Win-Shortcuts
;#y:: OeffneSemVier() ; Öffnet 4.Semester Clouddrive [Win + y]

; Alt-Shortcuts
!Down::WinMinimize, A ; Minimiert jegliches aktives Fenster [Alt + Arrow Down]
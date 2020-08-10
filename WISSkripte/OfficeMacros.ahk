#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#InstallMouseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

#Include, %A_ScriptDir%\killAllWindows.ahk
#Include, %A_ScriptDir%\openStandardChromeTabs.ahk
#Include, %A_ScriptDir%\CopyMasterPWFromKeePass.ahk 
#Include, %A_ScriptDir%\publishSkripte.ahk

; Funktioniert beim Start von Windows nicht
; Run, "VSMacro.ahk" ; Wir starten von hier das VS-Makro Skript

#IfWinActive ; Falls was außerhalb von Studio funktionieren sollte

; Strg-Shortcuts
^!c:: RufeAlleTabsAuf() ; Browser öffnen [Strg + Alt + c]
^+o:: SchliesseWindows() ; Schließt alle aktiven Fenster (außer Task Manager) [Strg + Shift + o]
^!n:: CopyPassword() ; Hole BitLocker-PW [Strg + Alt + n]
^!b:: PublishSkripte() ; Veröffentlicht alle Skripte [Strg + Alt + b]

; Alt-Shorcuts
!down::WinMinimize, A
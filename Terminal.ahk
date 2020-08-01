#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

; Put in home dir

#`::
Run, "C:\Users\Dylan\AppData\Local\Microsoft\WindowsApps\wt.exe"
Sleep 300
WinActivate

﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

; Put in home dir

#`::
Sleep 100
IfWinExist, ahk_exe WindowsTerminal.exe
{
	IfWinActive
		PostMessage, 0x112, 0xF020,,, ahk_exe WindowsTerminal.exe  ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
	IfWinNotActive
		WinActivate
}
else {
	Run, "C:\Users\Dylan\AppData\Local\Microsoft\WindowsApps\wt.exe"
	WinActivate, ahk_exe WindowsTerminal.exe
}

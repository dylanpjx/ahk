﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon


; Run Sumatra/Relaunch Sumatra if minimised

#F2::
Sleep 100
IfWinExist, ahk_exe SumatraPDF.exe
{
	IfWinActive
		WinMinimize
	IfWinNotActive
		WinMaximize
} else
	Run, SumatraPDF.exe
	WinActivate
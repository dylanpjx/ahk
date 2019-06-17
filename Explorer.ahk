#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Assign m4 in WinE to go up one directory instead

#IfWinActive, ahk_exe explorer.exe 
{
	XButton1::!Up
	return
}

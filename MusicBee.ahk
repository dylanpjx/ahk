#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




; Run MusicBee/Relaunch MusicBee if minimised
SetTitleMatchMode 2          ; Match title of windows by part of the name

Home::
Sleep 100
IfWinExist, ahk_exe musicbee.exe 
{
	IfWinActive
		PostMessage, 0x112, 0xF020,,, ahk_exe musicbee.exe  ; 0x112 = WM_SYSCOMMAND, 0xF030 = SC_MAXIMIZE
	IfWinNotActive
		PostMessage, 0x112, 0xF120,,, ahk_exe musicbee.exe ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
} else
	Run, D:\AHK\MusicBee
	WinActivate
	
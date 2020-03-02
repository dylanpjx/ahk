#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

; Put in home dir

#`::
IfWinExist, ahk_exe mintty.exe
{
	IfWinActive
		PostMessage, 0x112, 0xF020,,, ahk_exe mintty.exe  ; 0x112 = WM_SYSCOMMAND, 0xF030 = SC_MAXIMIZE
	IfWinNotActive
		PostMessage, 0x112, 0xF120,,, ahk_exe mintty.exe ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
}
else {
	Run, C:\Users\Dylan\AppData\Local\wsltty\bin\mintty.exe --WSL= --configdir="C:\Users\Dylan\AppData\Roaming\wsltty"
	WinWait, ahk_exe mintty.exe
	WinActivate, ahk_exe mintty.exe
}

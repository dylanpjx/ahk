#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Run Sumatra/Relaunch Sumatra if minimised

#F2::
Sleep 100
IfWinExist, ahk_exe SumatraPDF.exe
{
	IfWinActive
		PostMessage, 0x112, 0xF020,,, ahk_exe SumatraPDF.exe  ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
	IfWinNotActive
		WinActivate
} else
	Run, SumatraPDF.exe
	WinActivate
return
	
; Run MusicBee/Relaunch MusicBee if minimised
SetTitleMatchMode 2          ; Match title of windows by part of the name

#F1::
Sleep 100
IfWinExist, ahk_exe musicbee.exe 
{
	IfWinActive
		PostMessage, 0x112, 0xF020,,, ahk_exe musicbee.exe ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
	IfWinNotActive
		WinActivate
} else
	Run, D:\Programming\ahk\MusicBee
	WinActivate
return

; Run Win terminal
#`::
Run, "C:\Users\Dylan\AppData\Local\Microsoft\WindowsApps\wt.exe"
WinActivate
return

; Run Firefox
#q::
Run, firefox.exe
WinActivate
return

; Run Discord
#w::
Run, "C:\Users\Dylan\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord"
WinActivate
return

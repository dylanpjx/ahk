#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

toggle:=0

F4::
toggle:=!toggle
if toggle {
	timerCount := 0
	timeMin := timerCount // 60
	timeSec := Mod(timerCount, 60)
	Gosub, Sub_ShowOverlay
}
else
	Gui, GUI_Overlay:Destroy
return

; Creates and shows the GUI
Sub_ShowOverlay:
    Gui, GUI_Overlay:New, +ToolWindow  +LastFound -Caption +hwndGUI_Overlay_hwnd
    Gui, Margin, 10, 10
    Gui, Font, s20 q4, Segoe UI Bold
    Gui, Add, Text, w200 Center vTEXT_Timer cWhite, %timeMin% Minutes `n %timeSec% Seconds

    Gui, Color, 000000
    WinSet, Transparent, 200
    Gui, Show, Hide, Overlay

    WinMove, 1720, 0 ; Change these values to move the window
    Gui, GUI_Overlay:Show

    SetTimer, Timer_Countdown, 1000
return

; Does the countdown and updating of the timer
Timer_Countdown:
    timerCount++
	timeMin := timerCount // 60
	timeSec := Mod(timerCount, 60)
    GuiControl, GUI_Overlay:, TEXT_Timer, %timeMin% Minutes `n %timeSec% Seconds
return


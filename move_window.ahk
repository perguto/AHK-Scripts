; WinTitle := "AutoHotkey Help" ; Make sure AutoHotkey CHM help is running
; WinActivate, %WinTitle%

^#+h::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 0, 0 , 960, 1080 ; This is what you asked for!
}
return

^#+l::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 960, 0 , 960, 1080 ; This is what you asked for!
}
return

; Ctr = 0
; Loop 50 {
;   WinMove, %WinTitle%, , %Ctr% , , 300, 300
;   Ctr += 5
;   }


; Ctr = 0
; Loop 50 {
;   WinMove, %WinTitle%, , , %Ctr% , 300, 300
;   Ctr += 5
;   }

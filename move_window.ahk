; WinTitle := "AutoHotkey Help" ; Make sure AutoHotkey CHM help is running
; WinActivate, %WinTitle%

;Meine Kommentare ↓
;u i o = thirds

^#+u::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 0, 0 , 640 , 1080 ; This is what you asked for!
}
return

^#+i::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , ,  640, 0 , 640 , 1080 ; This is what you asked for!
}
return

^#+o::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , ,  1280 ,0 , 640 , 1080 ; This is what you asked for!
}
return

^#+h::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 0, 0 , 960, 1080 ; This is what you asked for!
}
return

^#+j::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 0, 0 , 0, 0 ; This is what you asked for!
}
return

^#+k::
WinGetTitle, currentWindow, A
IfWinExist %currentWindow%
{
	WinMove, , , 0, 0 , 1920, 1080 ; This is what you asked for!
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

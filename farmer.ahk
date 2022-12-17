#NoEnv
#SingleInstance force
#Persistent
SetTimer, CheckIdle, 10000
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; lastidle:=0
repeattime =0
CheckIdle:
If ( A_TimeIdle > 20000 + repeattime ) {
	mousemove,1,1,100, R
		repeattime=40000
		;lastidle := A_TimeIdle
		run brave
		;sleep 60000
}
else {
	if (A_TimeIdle < 20000 ){
repeattime:=0
	}
	;lastidle := 0
}
Return 
;IfGreater, A_TimeIdle, 6000, MsgBox, The last keyboard or mouse activity was at least 10 minutes ago

; !O::ControlSend, ahk_parent, ^t, ahk_exe brave.exe
; !O::run brave

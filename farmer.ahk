#NoEnv
#SingleInstance force
#Persistent
SetTimer, CheckIdle, 5000
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CheckIdle:
    If ( A_TimeIdle > 60000 ) {
     run brave
    }
Return 
;IfGreater, A_TimeIdle, 6000, MsgBox, The last keyboard or mouse activity was at least 10 minutes ago

; !O::ControlSend, ahk_parent, ^t, ahk_exe brave.exe
; !O::run brave

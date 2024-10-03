#Warn
; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force

pid:=""
TempToolTip(s){
ToolTip, %s%
SetTimer, RemoveToolTip, -1000
return
}

RemoveToolTip:
ToolTip
return

PgUp::ControlSend, , {9}, ahk_exe RazerAppEngine.exe
PgDn::ControlSend, , {9}, ahk_exe ahk_pid 14508
Home::ControlSend, , {9}, ahk_exe GameManagerService3.exe
; PgDn::ControlSend, ,{9}, ahk_exe notepad.exe

End::
WinGet, pid, PID, A
ControlSend, , {9}, ahk_exe ahk_pid %pid%
WinGet, name, ProcessName, ahk_pid %pid%
TempToolTip("Send keypress to " . name . " (" . pid . ")")
return

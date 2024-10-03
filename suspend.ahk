; requires sysinternal pssuspend utility in PATH
#SingleInstance force
#Warn  ; Enable warnings to assist with detecting common errors.
pid:=""

TempToolTip(s){
ToolTip, %s%
SetTimer, RemoveToolTip, -1000
return
}

!Pause::
; MsgBox "Shortcut pressed"
if(pid = ""){
WinGet, pid, PID, A
run, pssuspend %pid%,,Hide
WinGet, name, ProcessName, ahk_pid %pid%
TempToolTip(name . " (" . pid . ") suspended")
}
else {
run, pssuspend -r %pid%,,Hide
WinGet, name, ProcessName, ahk_pid %pid%
TempToolTip(name . " (" . pid . ") resumed")
pid := ""
}
return



RemoveToolTip:
ToolTip
return

; ^#R::
; WinGet, pid, PID, A
; run, pssuspend -r %pid% ;doesn't work because suspended window not active
; return

;slightly modified chatgpt answer
;trash because kills process instead of suspending
; ^#P::
; WinGet, active_id, ID, A
; ; ListVars
; ; Pause
; if (active_id = "")
;     return
; WinGet, pid, PID, % "ahk_id " active_id
; if (pid = "")
;     return
; if (ProcessExist(pid))
; {
;     SuspendProcess(pid)
;     if (ProcessExist(pid, "S"))
; 	{
;         Tooltip, Process %pid% suspended.
; 		SetTimer, RemoveToolTip, -5000
; 		}
;     else
; 		{
;         Tooltip, Error: Could not suspend process %pid%.
; 		SetTimer, RemoveToolTip, -5000
; 		}
; }
; else
; {
;     Tooltip, Error: Could not find process with PID %pid%.
; 		SetTimer, RemoveToolTip, -5000
; }
; return

; ProcessExist(pid, state="") {
;     process_path := ""
;     Process, Exist, %pid% ; process sets errorlevel to pid
; ; ListVars
; ; Pause
;     If (ErrorLevel)
;     {
;         ; Process, Close, %pid%
;         ; Process, WaitClose, %pid%
;         process_path := ProcessPath(pid)
;     }
;     If (state <> "")
;         Return (state = "S" and process_path <> "") or (state = "R" and process_path = "")
;     Else
;         Return process_path <> ""
; }

; ProcessPath(pid) {
;     process_path := ""
;     for process in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_Process WHERE ProcessId=" pid)
;     {
;         process_path := process.ExecutablePath
;         break
;     }
;     return process_path
; }

; SuspendProcess(pid) {
;     DllCall("ntdll\NtSuspendProcess", "ptr", pid)
; }


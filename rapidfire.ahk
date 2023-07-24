#SingleInstance force
#Warn
Ins::Suspend 

a::
Loop 

{ 

SetKeyDelay 69 

SendRaw z ;replace Space with whatever key you want.

; If (GetKeyState("Z","P")=0) 

Break 

}

; CONFLICTS WITH OTHER \ bindings !!!!
;#MenuMaskKey vkFF
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.
;SC56 = IntlBackslash (left of zxc)
SC56 & F1::
Run "C:\Program Files\AutoHotkey\AutoHotkey.chm" "hi"
sleep, 6000
ControlSend, ahk_parent, "hallo", ahk_exe hh.exe
return
SC46 & X::ControlSend, ahk_parent, "hallo", ahk_exe hh.exe
SC46 & Z::Send "ello"

;#MenuMaskKey vkFF
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

;Remark: Don't hold for too long or else you'll send Win key and alt
SC56 & I::Send {Silent}{Home} ;go to start of line
SC56 & A::Send {Silent}{END} ;go to end of line
SC56 & H::Send {Silent}{Left} ;go to end of line
SC56 & J::Send {Silent}{Down} ;go to end of line
SC56 & K::Send {Silent}{Up} ;go to end of line
SC56 & L::Send {Silent}{Right} ;go to end of line
SC56 & B::Send {Silent}{PgUp} ;go to end of line
SC56 & F::Send {Silent}{PgDn} ;go to end of line
;SC56 = IntlBackslash (left of zxc)
;~SC56::Send {SC56}

SC56 & F1::
Run "C:\Program Files\AutoHotkey\AutoHotkey.chm"
;ControlSend, ahk_parent, "hallo", ahk_exe hh.exe;not working
return
;SC56 & X::ControlSend, ahk_parent, "hallo", ahk_exe "C:\Program Files\AutoHotkey\AutoHotkey.chm";not working
;SC56 & Z::Send ello

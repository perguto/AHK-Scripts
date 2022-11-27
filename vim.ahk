;#MenuMaskKey vkFF
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

;Remark: Don't hold for too long or else you'll send Win key and alt
; SC56 & I::Send {Silent}{Home} ;go to start of line
; SC56 & A::Send {Silent}{END} ;go to end of line
; SC56 & H::Send {Silent}{Left}
; SC56 & J::Send {Silent}{Down}
; SC56 & K::Send {Silent}{Up}
; SC56 & L::Send {Silent}{Right}
; SC56 & U::Send {Silent}{PgUp}
; SC56 & D::Send {Silent}{PgDn}
SC56 & I::Home ;go to start of line
SC56 & A::END ;go to end of line
SC56 & H::Left
SC56 & J::Down
SC56 & K::Up
SC56 & L::Right
SC56 & U::PgUp
SC56 & D::PgDn
SC56 & B::Send ^{Left}
SC56 & W::Send ^{Right}
SC56 & [::Send ^{Up}
SC56 & ]::Send ^{Down}
;SC56 & V::Send {Alt Down} ;freezes
;SC56 & Y::Send {Alt Up}
;SC56 = IntlBackslash (left of zxc)
;~SC56::Send {SC56}

SC56 & F1::
;Run, "C:\Program Files\AutoHotkey\AutoHotkey.chm", Min
Run ahk_man.lnk, Max
;ControlSend, ahk_parent, "hallo", ahk_exe hh.exe;not working
return
;SC56 & X::ControlSend, ahk_parent, "hallo", ahk_exe "C:\Program Files\AutoHotkey\AutoHotkey.chm";not working
;SC56 & Z::Send ello

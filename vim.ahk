;#MenuMaskKey vkFF ; necessary to suppress leaking control key if repeatedly using Alt or Meta key shortcuts
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

;SC56 = key with scancode 56 = "International Backslash" key (replaces part of the left shift key on non-American keyboards)
; good option if you have it, as its just a second backslash key for the English layout.
; If you don't have it replace "SC56 & H" etc. with something like "!H" for Alt + H, "^!H" for Ctrl + Alt + H etc
; ( ^ = Ctrl, ! = Alt, + = Shift, # = Meta (Windows key)
;obsolete;Remark: Don't hold for too long or else you'll send Win key and alt

; note to myself: 
; one could try refactoring with 
; #If, GetKeyState("SC56", "P")
; but this would probably not turn SC56 into a dead key

; SC56 & I::Send {Silent}{Home} ;go to start of line
; SC56 & A::Send {Silent}{END} ;go to end of line
; SC56 & H::Send {Silent}{Left}
; SC56 & J::Send {Silent}{Down}
; SC56 & K::Send {Silent}{Up}
; SC56 & L::Send {Silent}{Right}
; SC56 & U::Send {Silent}{PgUp}
; SC56 & D::Send {Silent}{PgDn}
; SC56 & B::Send ^{Left}
; SC56 & W::Send ^{Right}
; SC56 & [::Send ^{Up}
; SC56 & ]::Send ^{Down}
SC56 & I::Home ;go to start of line
SC56 & A::END ;go to end of line
SC56 & H::Left
SC56 & J::Down
SC56 & K::Up
SC56 & L::Right
SC56 & U::PgUp ; emulating <C-F>
SC56 & D::PgDn ; emulating <C-B>
SC56 & B::^Left ; emulating b/B
SC56 & W::^Right ; emulating w/W 
SC56 & [::^Up ; emulating {
SC56 & ]::^Down ; emulating }
SC56 & O::Send {END}{Enter} ; o
#If, GetKeyState("Shift", "P")
SC56 & O::Send {Home}{Enter}{Up} ; O
#If ; ahk #if isn't recursive, hence this instruction works as an endif
SC56 & V::Send {Shift Down}
SC56 & C::Send {Shift Up}
SC56 & Space::LButton
SC56 & X::Del ; emulating x
SC56 & S::RButton
; SC56 & Y::
; Send {Shift Up}
; Sleep 1
; Send ^C
; return
;SC56 = IntlBackslash (left of zxc)
;~SC56::Send {SC56}

SC56 & F1::
;Run, "C:\Program Files\AutoHotkey\AutoHotkey.chm", Min
Run ahk_man.lnk, Max
;ControlSend, ahk_parent, "hallo", ahk_exe hh.exe;not working
return
;SC56 & X::ControlSend, ahk_parent, "hallo", ahk_exe "C:\Program Files\AutoHotkey\AutoHotkey.chm";not working ;SC56 & Z::Send ello

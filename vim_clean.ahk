;#MenuMaskKey vkFF ; necessary to suppress leaking control key if repeatedly using Alt or Meta key shortcuts
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

;SC56 = key with scancode 56 = "International Backslash" key (replaces part of the left shift key on some non-American keyboards)
; good option if you have it, as its just a second backslash key for the English layout.
; If you don't have it replace "SC56 & H" etc. with something like "!H" for Alt + H, "^!H" for Ctrl + Alt + H etc
; ( ^ = Ctrl, ! = Alt, + = Shift, # = Meta (Windows key)
;obsolete;Remark: Don't hold for too long or else you'll send Win key and alt

; note to myself: 
; one could try refactoring with 
; #If, GetKeyState("SC56", "P")
; but this would probably not turn SC56 into a dead key

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
SC56 & O::Send {END}{Shift Down}{Enter}{Shift Up} ; o shift + enter to not send input to devtools or similar REPLs
#If, GetKeyState("Shift", "P")
SC56 & O::Send {Home}{Shift Down}{Enter}{Shift Up}{Up} ; O
#If ; ahk #if isn't recursive, hence this instruction works as an endif
;SC56 & V::Send {Shift Down}
;SC56 & C::Send {Shift Up}
SC56 & X::Del ; emulating x
SC56 & Space::LButton  ;  left mouse button
SC56 & S::RButton ;  right mouse button

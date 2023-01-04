;#MenuMaskKey vkFF ; necessary to suppress leaking control key if repeatedly using Alt or Meta key shortcuts
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.
number := ""
;SC56 = key with scancode 56 = "International Backslash" key (replaces part of the left shift key on some non-American keyboards)
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
SC56 & O::Send {END}{Shift Down}{Enter}{Shift Up} ; o shift + enter to not send input to devtools or similar REPLs
#If, GetKeyState("Shift", "P")
SC56 & O::Send {Home}{Shift Down}{Enter}{Shift Up}{Up} ; O
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
#MaxThreadsPerHotkey 2

; Repeat the next keypress the given number of times when Ctrl and a digit key are pressed
SC56 & 0::
SC56 & 1::
SC56 & 2::
SC56 & 3::
SC56 & 4::
SC56 & 5::
SC56 & 6::
SC56 & 7::
SC56 & 8::
SC56 & 9::
    ; Get the digit from the key that was pressed
    digit := SubStr(A_ThisHotkey, 8)
	; MsgBox, %digit% 
	number := number digit
	; MsgBox % number
    ; Repeat the next keypress the given number of times
    ;Send, {Blind}{Shift down} 
	; Input, key, L1, 

	Input, key, L1 B , % "{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}"
		. "{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}"
		. "{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}"
		. "{PrintScreen}{Pause}"

		; key := Instr(ErrorLevel, "EndKey") ? "{" StrReplace(ErrorLevel, "EndKey:") "}" : key
		key := Instr(ErrorLevel, "EndKey") ? StrReplace(ErrorLevel, "EndKey:") : key
	; MsgBox {%key% %number%}
	Send {%key% %number%}
	#If key is digit
	number:=""
	#If


    ; Send, {Blind}
    ; Loop, %digit%
	; {
		; ; MsgBox, %key%
		; ; Send % key aaaaaaaaaa
		; ; Send {%key%}
		; Send %key%
    ;     ; Send, {Shift up}{Blind}{Shift down}{shift up}
    ;     ; Send, {Blind}aaaaa
		; }
return

; Example usage: press SC56 + 3, then press a to repeat "a" 3 times 	  9

; Output: "aaa"



SC56 & F1::
;Run, "C:\Program Files\AutoHotkey\AutoHotkey.chm", Min
Run ahk_man.lnk, Max
;ControlSend, ahk_parent, "hallo", ahk_exe hh.exe;not working
return
;SC56 & X::ControlSend, ahk_parent, "hallo", ahk_exe "C:\Program Files\AutoHotkey\AutoHotkey.chm";not working ;SC56 & Z::Send ello

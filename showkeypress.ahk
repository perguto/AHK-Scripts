#SingleInstance force
;+^u::MsgBox %LastKey%
CoordMode, Mouse, Screen
Loop
{
	Input, key, L1 B V      , % "{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}"
		. "{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}"
		. "{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}"
		. "{PrintScreen}{Pause}"

		key := Instr(ErrorLevel, "EndKey") ? "{" StrReplace(ErrorLevel, "EndKey:") "}" : key

		name := GetKeyName(key)
		vk   := GetKeyVK(key)
		sc   := GetKeySC(key)

		;Tooltip, %key%, 0, 0 ;adjust these numbers to place the tooltip wherever you want it on your screen
		Tooltip, % Format("orig:`t{}`nName:`t{}`nVK:`t{:X}`nSC:`t{:X}", key, name, vk, sc), 0, 0 
		sleep, 10
}
return

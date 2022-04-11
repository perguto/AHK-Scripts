#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;next song
^Numpad6::Send {Media_Next}
return
^Numpad4::Send {Media_Prev}
return
^Numpad5::Send {Media_Play_Pause}
return
^Numpad8::Send {Volume_Up}
return
^Numpad2::Send {Volume_Down}
return
^Numpad7::Send {Volume_Mute}
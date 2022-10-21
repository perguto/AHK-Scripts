#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;next song
^Numpad6::Send {Media_Next}
;return
^Numpad4::Send {Media_Prev}
;return
^Numpad5::Send {Media_Play_Pause}
;return
^Numpad8::Send {Volume_Up}
;return
^Numpad2::Send {Volume_Down}
;return
^Numpad7::Send {Volume_Mute}
!Numpad5::ControlSend, ahk_parent, {Space}, ahk_exe mpv.exe
!Numpad4::ControlSend, ahk_parent, {PgDn}, ahk_exe mpv.exe
!Numpad6::ControlSend, ahk_parent, {PgUp}, ahk_exe mpv.exe
!Numpad2::ControlSend, ahk_parent, {9}, ahk_exe mpv.exe
!Numpad8::ControlSend, ahk_parent, {0}, ahk_exe mpv.exe
!Numpad7::ControlSend, ahk_parent, {m}, ahk_exe mpv.exe
!Numpad1::ControlSend, ahk_parent, {<}, ahk_exe mpv.exe
!Numpad3::ControlSend, ahk_parent, {>}, ahk_exe mpv.exe


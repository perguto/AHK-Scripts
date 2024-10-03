#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

^F12::Suspend
e::Up
s::Left
d::Down
f::Right

h::Enter

; meta contra android
; j::a
; k::v
; $l::
; 	while (getKeyState("l", "P"))
; 	{
; 		send, {a}
; 		; sleep, 0
; 	}
; return

; setKeyDelay, 50, 50
; setMouseDelay, 50
; $~u::
; 	while (getKeyState("lbutton", "P"))
; 	{
; 		send, {lbutton}
; 		sleep, 100
; 	}
; return

; undertale, tower of heaven
; j::x
; k::z

; ; touhou
; l::z ; shoot
; j::shift ; focus
; k::x ; bomb
; `;::c
; p::Esc

; super meat boy
; j::shift ; run
; k::space

; sonic 2 hd
j::a
k::s
l::d

; jazz jackrabbit
; j::space
; k::ctrl
; l::shift

; mari0
; j::shift
; k::space
; e::w
; s::a
; d::s
; f::d

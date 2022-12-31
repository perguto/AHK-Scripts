#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

; >! RAlt altRight
; <^>! left ctrl + right alt = AltGr (right alt is altgr only in international keyboard)

>!a::Send, ä
>!o::Send, ö
>!u::Send, ü
>!s::Send, ß
>!+a::Send, Ä
>!+o::Send, Ö
>!+u::Send, Ü

; <^>!a::Send, ä
; <^>!o::Send, ö
; <^>!u::Send, ü
; <^>!s::Send, ß		;CapsLock+s = CapsLock+s, Eszett
; <^>!+a::Send, Ä
; <^>!+o::Send, Ö
; <^>!+u::Send, Ü

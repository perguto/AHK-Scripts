#MenuMaskKey vkFF
#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.
!+I::Send {Home} ;go to start of line
!+A::Send {END} ;go to end of line
!+H::Send {Left} ;go to end of line
!+J::Send {Down} ;go to end of line
!+K::Send {Up} ;go to end of line
!+L::Send {Right} ;go to end of line
!+B::Send {PgUp} ;go to end of line
!+F::Send {PgDn} ;go to end of line

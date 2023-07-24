#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#MaxHotkeysPerInterval 20000
#Warn  ; Enable warnings to assist with detecting common errors.

^#Q::
clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait, 2  ; Wait for the clipboard to contain text.
if ErrorLevel
{
	;Do nothing after 2 seconds timeout
		return
}
run % "C:\Users\Toni\OrenoCode\exe\speak.ps1" clipboard
return

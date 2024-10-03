#SingleInstance force
#Warn

; ^Pause::
!PrintScreen::
clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait, 2  ; Wait for the clipboard to contain text.
if ErrorLevel
{
	;Do nothing after 2 seconds timeout
		return
}
;Run https://translate.google.com/#auto/es/%clipboard%
run % "brave.exe ""https://translate.google.com/#auto/es/"clipboard
;Run https://translate.google.com/#auto/es/%clipboard%
return

^PrintScreen::
clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait, 2  ; Wait for the clipboard to contain text.
if ErrorLevel
{
	;Do nothing after 2 seconds timeout
		return
}
clipboard := trim(clipboard)
; StringLower, word, clipboard
; StringSplit, words, clipboard, " "
words := StrSplit(clipboard, " ")
for index,word in words
{
	; ListVars
		; Pause
		; MsgBox, %word%
		; Run, https://en.wiktionary.org/wiki/%word%
		; Run, https://en.wiktionary.org/wiki/%word%,, UseErrorLevel
		; if ErrorLevel
		; {
			; Run, https://en.wiktionary.org/wiki/%word%
				; if word is not lower
				; if word is not lower
				; {
					StringLower, word, word
						Run, https://en.wiktionary.org/wiki/%word%
				; }
			; }
	;Run https://translate.google.com/#auto/es/%clipboard%
		; run % "https://en.wiktionary.com/wiki/"word
		;Run https://translate.google.com/#auto/es/%clipboard%
}
return

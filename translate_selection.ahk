Pause::
clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait, 2  ; Wait for the clipboard to contain text.
if ErrorLevel
{
    ;Do nothing after 2 seconds timeout
    return
}
;Run https://translate.google.com/#auto/es/%clipboard%
run % "brave.exe ""--app=https://translate.google.com/#auto/es/"clipboard
;Run https://translate.google.com/#auto/es/%clipboard%
return

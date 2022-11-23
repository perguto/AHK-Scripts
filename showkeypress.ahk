#SingleInstance force
;+^u::MsgBox %LastKey%
CoordMode, Mouse, Screen
Loop
{
    Input, LastKey, L1 V      

Tooltip, %LastKey%, 0, 0 ;adjust these numbers to place the tooltip wherever you want it on your screen
sleep, 10
}
return

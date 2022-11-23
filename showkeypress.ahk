#SingleInstance force
;+^u::MsgBox %LastKey%
CoordMode, Mouse, Screen
Loop
{
    Input, key, L1 V      

name := GetKeyName(key)
vk   := GetKeyVK(key)
sc   := GetKeySC(key)

;Tooltip, %key%, 0, 0 ;adjust these numbers to place the tooltip wherever you want it on your screen
Tooltip, % Format("orig:`t{}`nName:`t{}`nVK:`t{:X}`nSC:`t{:X}", key, name, vk, sc), 0, 0 
sleep, 10
}
return

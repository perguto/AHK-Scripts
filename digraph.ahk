#SingleInstance force
digraph_mode := false

;#<::
#<::
digraph_mode := !digraph_mode
return

#If digraph_mode = true

:*?C:-N::
Send, –
digraph_mode := false
return

:*?C:-M::
Send, —
digraph_mode := false
return

:*?C:NS:: 

:*?C:Co::
Send, ©
digraph_mode := false
return

:*?C:.M::
Send, ·
digraph_mode := false
return

:*?C:>>::
Send, »
digraph_mode := false
return

:*?C:*X::×
digraph_mode := false
return

:*?C:1N::
Send,  
digraph_mode := false
return

:*?C:1M::
Send,  
digraph_mode := false
return

:*?C:3M::
Send,  
digraph_mode := false
return

:*?C:4M::
Send,  
digraph_mode := false
return

:*?C:6M::
Send,  
digraph_mode := false
return

:*?C:1T::
Send,  
digraph_mode := false
return

:*?C:1H::
Send,  
digraph_mode := false
return

:*?C:-3::
Send, ―
digraph_mode := false
return

:*?C:'6::
Send, ‘
digraph_mode := false
return

:*?C:'9::
Send, ’
digraph_mode := false
return

:*?C:.9::
Send, ‚
digraph_mode := false
return

:*?C:9'::
Send, ‛
digraph_mode := false
return

:*?C:"6::
Send, “
digraph_mode := false
return

:*?C:"9::
Send, ”
digraph_mode := false
return

:*?C:`:9::
Send, „
digraph_mode := false
return

:*?C:9"::
Send, ‟
digraph_mode := false
return

:*?C:/-::
Send, †
digraph_mode := false
return

:*?C:/=::
Send, ‡
digraph_mode := false
return

:*?C:..::
Send, ‥
digraph_mode := false
return

:*?C:,.::
Send, …
digraph_mode := false
return

:*?C:%0::
Send, ‰
digraph_mode := false
return

:*?C:`:X::
Send, ※
digraph_mode := false
return

:*?C:oC::
Send, ℃
digraph_mode := false
return

:*?C:N0::
Send, №
digraph_mode := false
return

:*?C:TM::
Send, ™
digraph_mode := false
return

:*?C:Om::
Send, Ω
digraph_mode := false
return

:*?C:<-::
Send, ←
digraph_mode := false
return

:*?C:-!::
Send, ↑
digraph_mode := false
return

:*?C:->::
Send, →
digraph_mode := false
return

:*?C:-v::
Send, ↓
digraph_mode := false
return

:*?C:<>::
Send, ↔
digraph_mode := false
return

:*?C:UD::
Send, ↕
digraph_mode := false
return

:*?C:<=::
Send, ⇐
digraph_mode := false
return

:*?C:=>::
Send, ⇒
digraph_mode := false
return

:*?C:==::
Send, ⇔
digraph_mode := false
return

:*?C:`:3::
Send, ⋮
digraph_mode := false
return

:*?C:.3::
Send, ⋯
digraph_mode := false
return

;+^y::run pwsh -nop -WindowStyle hidden -file C:/Users/Toni/ore/exe/yomichan.ps1 ;window pops up
;1+!y::run yomichan.cmd ;ugly console appearing

;UrlEncode( String )
;{
;	OldFormat := A_FormatInteger
;	SetFormat, Integer, H
;
;	Loop, Parse, String
;	{
;		if A_LoopField is alnum
;		{
;			Out .= A_LoopField
;			continue
;		}
;		Hex := SubStr( Asc( A_LoopField ), 3 )
;		Out .= "%" . ( StrLen( Hex ) = 1 ? "0" . Hex : Hex )
;	}
;
;	SetFormat, Integer, %OldFormat%
;
;	return Out
;}
;u := UrlEncode(%clipboard%)
+^y::run % "brave.exe ""--app=chrome-extension://ogmnaimimemjmbakcfefmnahgdfhfami/search.html?query="EncodeDecodeURI(clipboard, true)


;+^y::run brave.exe "--app=chrome-extension://ogmnaimimemjmbakcfefmnahgdfhfami/search.html"
;+^y::run, C:\Users\Toni\ore\exe\yomichan.js %clipboard%, , Hide
;+^y::MsgBox %clipboard%
EncodeDecodeURI(str, encode := true, component := true) {
   static Doc, JS
   if !Doc {
      Doc := ComObjCreate("htmlfile")
      Doc.write("<meta http-equiv=""X-UA-Compatible"" content=""IE=9"">")
      JS := Doc.parentWindow
      ( Doc.documentMode < 9 && JS.execScript() )
   }
   Return JS[ (encode ? "en" : "de") . "codeURI" . (component ? "Component" : "") ](str)
}
;u := EncodeDecodeURI(clipboard, true)
;+^y::run brave.exe "--app=chrome-extension://ogmnaimimemjmbakcfefmnahgdfhfami/search.html?query="%EncodeDecodeURI(clipboard, true)%

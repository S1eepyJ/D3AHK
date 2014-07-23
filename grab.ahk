#Include OCR.ahk

topLeftX=1004
topLeftY=429
widthToScan=145
heightToScan=40


   filenamejpg := "in.jpg"
   filenamePnm := "in.pnm"
   jpegQuality := 100
   djpegPath=djpeg.exe
   gocrPath=gocr.exe


   pToken:=Gdip_Startup()
   pBitmap:=Gdip_BitmapFromScreen(topLeftX "|" topLeftY "|" widthToScan "|" heightToScan)
   Gdip_SaveBitmapToFile(pBitmap, filenamejpg, jpegQuality)
   Gdip_Shutdown(pToken)

   ; Wait for jpg file to exist
   while NOT FileExist(filenamejpg)
      Sleep, 10

IfWinExist, ahk_class Readiris
{
WinActivate
} 
else
{
msgbox, open OCR
exitapp
}
winwaitactive, ahk_class Readiris
send, {ctrl down}n{ctrl up}
sleep 100
send, {alt down}f{alt up}
sleep 100
send, o
sleep 1000
Send, {shift down}{tab 2}{shift up}{PgDn}{enter}
sleep 1000
MouseClickDrag, L, 1013, 533, 1161, 571
sleep 1000
send, {ctrl down}r{ctrl up}
sleep 1000
send, {alt down}f{alt up}
sleep 500
send, {ctrl down}n{ctrl up}

StringReplace, clipboard, clipboard, %A_space%, , All ;remove possible "space"
StringReplace, clipboard, clipboard, `r`n, , All ;remove possible "returns"
StringReplace, clipboard, clipboard, `r, , All ;remove possible "returns"
StringReplace, clipboard, clipboard, `n, , All ;remove possible "returns"
StringReplace, clipboard, clipboard, `,, , ALL ;remove possible ","

winactivate, Diablo III
WinWaitActive, Diablo III
sleep 200
return

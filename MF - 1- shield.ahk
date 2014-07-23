#include C:\Users\S1eepy\Scripts\Master\prices.ahk

MouseClick, left, 200, 640 ; auction house
Sleep, 100
MouseClick, left, 482, 240 ; equipment
Sleep, 100
MouseClick, left, 623, 386 ; item type 1
Sleep, 100
MouseClick, left, 539, 483 ; off hand
Sleep, 100
MouseClick, left, 619, 763 ; max buyout
Sleep, 100
send, 50000000
Sleep, 100
MouseClick, left, 580, 597 ; Stat 1
Sleep, 100
MouseClickDrag, L, 738, 670, 738, 891
sleep, 100
MouseClick, left, 515, 917 ; Magic Find
Sleep, 100
MouseClick, left, 620, 597 ; Value 1
Sleep, 100
Send 20{enter}
MouseClick, left, 1423, 278 ; Sort
Sleep, 100
MouseClick, left, 1423, 278 ; Sort
Sleep, 1000
MouseClick, left, 1466, 320 ; Item 1
Sleep, 100
MouseClick, left, 1447, 873 ; Buyout
Sleep, 100
MouseClick, left, 1466, 370 ; Item 2
Sleep, 100
MouseClick, left, 1447, 873 ; Buyout
Sleep, 100
MouseClick, left, 1466, 415 ; Item 3
Sleep, 100
MouseClick, left, 1447, 873 ; Buyout
Sleep, 100
MouseClick, left, 1466, 460 ; Item 4
Sleep, 100
MouseClick, left, 1447, 873 ; Buyout
Sleep, 100
MouseClick, left, 1466, 505 ; Item 5
Sleep, 100
MouseClick, left, 1447, 873 ; Buyout
Sleep, 100

Runwait, open "C:\Users\S1eepy\Scripts\AH\grab.ahk"

;can enter IF value less than x here to buyout


if (clipboard < shieldprice and clipboard > 100)
{
MouseClick, left, 847, 717 ;BUYOUT
sleep, 1000
send, {enter}
sleep 1500
}
else
{
MouseClick, left, 1068, 717 ;Cancel - use this when doing function properly
}

sleep 300
return

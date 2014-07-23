F1::
sleep, 100
loop
{
IfWinExist, Microsoft Excel - D3stats
{
WinActivate
sleep 500
} 
else
{
runwait, "C:\Users\S1eepy\Scripts\D3stats.xlsm"
sleep 3000
}
clipboard = 1
winactivate , Diablo III
sleep 700 

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 1- shield.ahk"
MFshield = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 2- belt.ahk"
MFbelt = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 3- boots.ahk"
MFboots = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 4- bracers.ahk"
MFbracers = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 5- chest.ahk"
MFchest = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 6- gloves.ahk"
MFgloves = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 7- pants.ahk"
MFpants = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 8- shoulders.ahk"
MFshoulders = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 9- ring.ahk"
MFring = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\MF - 10- amulet.ahk"
MFamulet = %clipboard%

sleep 500
Send {esc}
sleep 500
runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 1- shield.ahk"
GFshield = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 2- belt.ahk"
GFbelt = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 3- boots.ahk"
GFboots = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 4- bracers.ahk"
GFbracers = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 5- chest.ahk"
GFchest = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 6- gloves.ahk"
GFgloves = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 7- pants.ahk"
GFpants = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 8- shoulders.ahk"
GFshoulders = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 9- ring.ahk"
GFring = %clipboard%

runwait, open "C:\Users\S1eepy\Scripts\AH\GF - 10- amulet.ahk"
GFamulet = %clipboard%


sleep 500
Send {esc}
sleep 1000
runwait, open "C:\Users\S1eepy\Scripts\AH\vernon - 1- braces 160dex-100vit-critchance.ahk"
vernon1 = %clipboard%

if JakeIK = 0
{
sleep 500
Send {esc}
sleep 1000
runwait, open "C:\Users\S1eepy\Scripts\AH\Jake - IKbelt.ahk"
jake1 = %clipboard%
}

sleep 1000
winactivate , Microsoft Excel - D3stats
FormatTime, TimeString,, Time
clipboard = %TimeString%.
send {ctrl down}g{ctrl up}
sleep 500
send a10{enter}
sleep 200
send {ctrl down}{down}{ctrl up}{down}{ctrl down}v{ctrl up}{tab 2}
sleep 900
Send, %MFshield%{tab}
sleep 500
Send, %MFbelt%{tab}
sleep 500
Send, %MFboots%{tab}
sleep 500
Send, %MFbracers%{tab}
sleep 500
Send, %MFchest%{tab}
sleep 500
Send, %MFgloves%{tab}
sleep 500
Send, %MFpants%{tab}
sleep 500
Send, %MFshoulders%{tab}
sleep 500
Send, %MFring%{tab}
sleep 500
Send, %MFamulet%{tab}
sleep 500
Send, %GFshield%{tab}
sleep 500
Send, %GFbelt%{tab}
sleep 500
Send, %GFboots%{tab}
sleep 500
Send, %GFbracers%{tab}
sleep 500
Send, %GFchest%{tab}
sleep 500
Send, %GFgloves%{tab}
sleep 500
Send, %GFpants%{tab}
sleep 500
Send, %GFshoulders%{tab}
sleep 500
Send, %GFring%{tab}
sleep 500
Send, %GFamulet%{tab}
sleep 500
Send, %vernon1%{tab}
sleep 500
Send, %jake1%{enter}
sleep 500
Send, {ctrl down}s{ctrl up}
sleep 500
winactivate , Diablo III
sleep 500
Send {esc}
sleep 60000
}
return

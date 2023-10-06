#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%



MsgBox this program will create new tab, paste you selected thing, add a number and press enter, 10 times in a row. this helps in doing searches for microsoft rewards
MsgBox copy something and press ctrl+alt+enter. to exit, press alt+p
Run msedge.exe
a := 1
SleepAmnt := 250
^!Enter::
Loop 10
{
Sleep %SleepAmnt%
Send ^t
Sleep %SleepAmnt%
Send ^v
Sleep %SleepAmnt%
Send %a%
Sleep %SleepAmnt%
Send {Enter}
Sleep %SleepAmnt%
a++
}
MsgBox Done, copy next thing. to exit, press alt+p
a:= 1
return

;loop above 10 times, then reset a to 0 after 10 loops

!p::
ExitApp




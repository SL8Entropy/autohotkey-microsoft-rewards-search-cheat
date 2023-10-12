#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%



MsgBox this program will create new tab, paste you selected thing, add a number and press enter, 10 times in a row. this helps in doing searches for microsoft rewards
MsgBox to exit, press alt+p

InputBox, Word1, Enter first word
InputBox, Word2, Enter second word
InputBox, Word3, Enter third word

list := [Word1,Word2,Word3]


Run msedge.exe
a := 1
SleepAmnt := 250
^!Enter::
for i in list
{
Loop 10
{
Sleep %SleepAmnt%
Send ^t
Sleep %SleepAmnt%
Send % list[i]
Sleep %SleepAmnt%
Send %a%
Sleep %SleepAmnt%
Send {Enter}
Sleep %SleepAmnt%
a++
}
a:= 1
}
Loop, 20
{
Send ^w
Sleep %SleepAmnt%
}
Loop,20
{
Send ^w
Sleep %SleepAmnt%
}
ExitApp



!p::
ExitApp




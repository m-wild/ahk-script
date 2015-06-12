; mwil.ahk
; Userful functions for AHK using an Apple keyboard
;
; @author  Michael Wildman  wildsimulation@gmail.com

; Session options
SetTitleMatchMode, 2

; (Win + Down) Minimize active window 
#Down::WinMinimize, A


; (F19) Cycle default audio playback device
Vk82::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down}
ControlGet, isEnabled, Enabled,,&Set Default
if(!isEnabled)
{
  ControlSend,SysListView321,{Down 2}
}
ControlClick,&Set Default
ControlClick,OK
WinWaitClose
SoundPlay, *-1
return

; (Win + F6) Switch to/from iTunes mini player
#F6::
IfWinExist, MiniPlayer
{
	WinActivate
}
else
{
	WinActivate iTunes
}
Send +^m
return

; (Win + F7-F12) Apple keyboard media key emulation
#F7::SendInput {Media_Prev}
#F8::SendInput {Media_Play_Pause}
#F9::SendInput {Media_Next}
#F10::SendInput {Volume_Mute}
#F11::SendInput {Volume_Down}
#F12::SendInput {Volume_Up}

; (F13) PrintScreen
VK7c::SendInput {PrintScreen}
^VK7c::SendInput ^{PrintScreen}

; (F14) ScrollLock
VK7d::SendInput {ScrollLock}

; Vk7e (F15) Pause/Break
Vk7e::SendInput {Pause}

; (F16) Toggle NVIDIA Shadow Play
Vk7f::SendInput !{F9}

; (F17) Save NVIDIA Shadow recording
Vk80::SendInput !{F10}

; Vk81 (F18) Insert
Vk81::SendInput {Insert}
!Vk81::SendInput !{Insert}
^Vk81::SendInput ^{Insert}
^!Vk81::SendInput ^!{Insert}

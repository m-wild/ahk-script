; mwil.ahk
; Userful functions for AHK using an Apple keyboard
;
; @author  Michael Wildman  wildsimulation@gmail.com

; (Win + Down) Minimize active window 
#Down::WinMinimize, A

; (Command + Q) Quit
#q::Send !{F4}

; (Command + W) Close window/tab
#w::Send ^{F4}

; (Command + c) Copy
#c::Send ^c

; (Command + x) Cut
#x::Send ^x

; (Command + v) Paste
#v::Send ^v

; (F15) Cycle default audio playback device
VK7e::
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

; (Win + z) Switch to/from iTunes mini player
#z::
SetTitleMatchMode, 2
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

; (Win + Shift + z) Search iTunes
#+z::
SetTitleMatchMode, 2
IfWinExist, MiniPlayer
{
	WinActivate
}
else
{
	WinActivate iTunes
}
Send ^f
return

; (Win + F7-F12) Apple keyboard media key emulation
#F7::Send {Media_Prev}
#F8::Send {Media_Play_Pause}
#F9::Send {Media_Next}
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}

; (F13) PrintScreen
VK7c::Send {PrintScreen}

; (F14) ScrollLock
VK7d::Send {ScrollLock}

; (F16) Toggle NVIDIA Shadow Play
Vk7f::Send !{F9}

; (F17) Save NVIDIA Shadow recording
Vk80::Send !{F10}

; Help:
; Apple keyboard only, F13-F19 mappings
; Vk7c (F13)
; Vk7d (F14)
; Vk7e (F15)
; Vk7f (F16)
; Vk80 (F17)
; Vk81 (F18)
; Vk82 (F19)
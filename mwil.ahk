;AutoHotKey Script
;Michael Wildman
;wildsimulation@gmail.com


; --- Replace default windows minimize
#Down::WinMinimize, A



; --- switch default audio device
VK7f::
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



; --- apple keyboard media key emulation
; using windows key
#F7::Send {Media_Prev}
#F8::Send {Media_Play_Pause}
#F9::Send {Media_Next}
#F10::Send {Volume_Mute}
#F11::Send {Volume_Down}
#F12::Send {Volume_Up}

; using F13-F19
VK7c::Send {PrintScreen}
;Vk7d::Send {Volume_Down}
;Vk7e::Send {Volume_Up}
;Vk7f::Send {Volume_Mute}
;Vk80::Send {Media_Prev}
;Vk81::Send {Media_Play_Pause}
;Vk82::Send {Media_Next}




; --- unused
; using always show taskbar
;WinMove, ahk_exe foobar2000.exe,, 10, 435, 350, 600
;WinMove, ahk_exe Skype.exe,, 375, 435, 400, 605, Skype
;WinMove, Google Chrome,, 580, 0, 1340, 1050
;WinMove, ahk_class MozillaWindowClass,, 580, 0, 1340, 1050
;WinMove, - Chat,, 375, 593, 508, 447
; using auto hide taskbar
;WinMove, ahk_exe foobar2000.exe,, 10, 465, 350, 600
;WinMove, ahk_exe Skype.exe,, 375, 465, 400, 605, Skype
;WinMove, Google Chrome,, 640, 0, 1280, 1079
;WinMove, - Chat,, 375, 593, 508, 479
;;Align windows
;#z::
;SetTitleMatchMode, 2
; using itunes
;WinMove, ahk_exe Skype.exe,, 17, 17, 400, 600, Skype
;WinMove, - Chat,, 17, 17, 400, 600
;WinMove, MiniPlayer,, 17, 634, 400, 400
;WinMove, ahk_class MozillaWindowClass,, 436, 0, 1484, 1050
;WinMove, Google Chrome,, 436, 0, 1484, 1080
;return
; --- switch itunes mini player
;#z::
;SetTitleMatchMode, 2
;IfWinExist, MiniPlayer
;	WinActivate
;else
;	WinActivate iTunes
;Send +^m
;return
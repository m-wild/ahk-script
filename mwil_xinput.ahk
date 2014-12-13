#include <XINPUT>

; UP 	0x0001
; DOWN 	0x0002
; LEFT 	0x0004
; RIGHT 0x0008
; START 0x0010
; BACK 	0x0020
; L3 	0x0040
; R3 	0x0080
; L1 	0x0100
; R1 	0x0200
; GUIDE 0x0400
; A 	0x1000
; B 	0x2000
; X 	0x4000
; Y  	0x8000
; L2 := (State.bLeftTrigger > 10) ? State.bLeftTrigger : 0
; R2 := (State.brightTrigger > 10) ? State.brightTrigger : 0


XInput_Init()

Loop {
    Loop, 4 {
        if State := XInput_GetState(A_Index-1) {
            btn := State.wButtons ; returns buttons, shoulders and guide state
			if btn = 0x0600 		; PS & R1
			{
				SendInput {F12}		; screenshot
			} 
			else if btn = 0x0500	; PS & L1
			{
				SendInput !{F10}	; save shadowplay video
			}
        }
    }
    Sleep, 100
}

   
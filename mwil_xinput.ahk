#include <XINPUT>

XInput_Init()

Loop {
    Loop, 4 {
        if State := XInput_GetState(A_Index-1) {
            btn := State.wButtons 	; returns buttons, shoulders and guide state
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

   
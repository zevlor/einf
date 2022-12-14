;------ The Main Program ----------------------------------------
START:
  CLO		; Close Everything
  MOV	AL,17   ; initializing 1. param.
  PUSH	AL      ; pushing 1. param. value to the stack
  MOV	BL,3    ; initializing 2. param.
  PUSH	BL      ; pushing 2. param. value to the stack
  CALL	30      ; Call the procedure at address [30]
  POP	BL
  POP	AL      ; the answer
  ADD AL, 30    ; converting the answer to ascci for the VDU
  MOV  [C0], AL ; displaying the answer
  JMP END       ; jump to the end section

	
; ----- Modulo Procedure Stored At Address [30] -------------
  ORG	30	; Code starts at address [30]
  POP	DL	; Return address

  POP	BL	; A parameter
  POP	AL	; A parameter

  MOD	AL,BL   ; calculating the answer 

  PUSH	AL	; Answer 
  PUSH	AL	; Answer ; doing it twice to match the number of pops.
  PUSH	DL	; Put the stack back as it was before


  RET		; Return from the procedure

;------ Ending The Program ----------------------------------------
END:
  END

;------ inits --------------------------------------------------
  CLO		; Close Everything
  MOV	AL,8   ; initializing 1. param.
  PUSH	AL      ; pushing 1. param. value to the stack
  MOV	BL,49    ; initializing 2. param.
  PUSH	BL      ; pushing 2. param. value to the stack

;------ The Main Program ----------------------------------------
START:
  CALL	30	; Call the procedure at address [30]
  POP 	BL	; i2 = r
  POP	AL	; i1 = i2 
  PUSH 	AL
  PUSH 	BL	

IF:
  CMP BL,0
  JZ PRINT
  JMP START


PRINT:
  MOV AL,30
  MOV [C0], AL
  JMP END

	
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

CLO 			
  JMP START		
  DB 0	
  DB 0		

START:
  MOV AL, A		
  MOV [03], AL
  MOV BL, 5
  MOV [04], BL

DO:	
  CALL 30
  PUSH AL
  PUSH BL
  POP AL
  POP BL
  JMP IF

IF:
  CMP BL, 0
  JZ END
  JMP DO

PROC:
  ORG	30	; Code starts at address [30]
  MOD	AL,BL	
  RET		



END:

  ADD AL, 30
  MOV [C0], AL 

  END

CLO 			
  JMP START		
  DB 0	
  DB 0		

START:
  MOV AL, E		
  MOV [03], AL
  MOV BL, 5
  MOV [04], BL	
  CALL 30
  JMP END

PROC:
  ORG	30	; Code starts at address [30]
  MOD	AL,BL	
  RET		



END:

  ADD AL, 30
  MOV [C0], AL 

  END

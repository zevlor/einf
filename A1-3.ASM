CLO 			
  JMP START		
  DB 0	
  DB 0		

START:
  MOV AL, 3		
  MOV [03], AL
  MOV BL, 0
  MOV [04], BL	

IF:
  CMP AL, 6			              
  JS INCREMENT
  JMP END

INCREMENT:
  ADD BL, 3
  INC AL
  MOV [03], AL
  MOV [04], BL
  JMP IF

END:
  ADD BL, 30
  MOV [C0], BL 
  END

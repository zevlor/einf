START:
  CLO				              ;close everything
  MOV DL,C0			              ;Make DL point to video RAM
  MOV AL, 0
  MOV BL, 0  			            
  	
IF:
  CMP AL, 6			              
  JS SECOND_IF
  JMP PRINT	

SECOND_IF:
  CMP AL, 3
  JZ SECONDE_DO
  JMP DO       

			                
DO:
  INC AL
  JMP IF

SECONDE_DO:
  INC AL
  ADD BL, 3
  JMP IF
	

PRINT:
  MOV CL, 30
  ADD CL, BL
  MOV [DL], CL


END: 
  END	

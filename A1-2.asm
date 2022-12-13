START:
  CLO				              ;close everything
  MOV BL,C0			              ;Make BL point to video RAM
  MOV AL, 5  			            
  	
IF:
  CMP AL, 3			              
  JZ DO
  JMP DO_ELSE	     

			                
DO:
  INC AL
  JMP PRINT


DO_ELSE:
  ADD AL, 2
  JMP PRINT


PRINT:
  MOV CL, 30
  ADD CL, AL
  MOV [BL], CL
  INC BL
  JMP IF


END: 
  END	

START:
  CLO				              ;close everything
  MOV DL,C0			              ;Make DL point to video RAM
  MOV AL, 3
  MOV BL, 0  			            
  	
IF:
  CMP AL, 6			              
  JS DO
  JMP PRINT	     

			                
DO:
  ADD BL, 3
  INC AL
  JMP IF

	

PRINT:
  MOV CL, 30
  ADD CL, BL
  MOV [DL], CL


END: 
  END	

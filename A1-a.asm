START:
  CLO				                  ;close everything
  MOV BL,C0			              ;Make BL point to video RAM
  MOV AL, 3  			            ;initializing the regester AL with the value hex. 3
  	
COMPARE:
  CMP AL, 5			              ;compare the two values
  JS PRINT_AND_INCREMENT	    ; 
  JMP END			                ;

PRINT_AND_INCREMENT:
  MOV CL, 30			            ;
  ADD CL, AL			            ; 
  MOV [BL], CL			          ;

  INC BL  			              ;
  INC AL			                ;

  JMP COMPARE			            ;

END: 
  END				                  ;

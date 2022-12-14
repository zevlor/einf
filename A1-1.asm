  CLO 			
  JMP START		
  DB 0			

START:
  MOV AL,5		
  MOV [03], AL  	
  	
  CMP AL, 5			   
  JS INCREMENT	    
  JMP END			 

INCREMENT:
  INC AL		             			         
  MOV [03], AL
  JMP END

END:
  ADD AL, 30
  MOV [C0], AL  
  END

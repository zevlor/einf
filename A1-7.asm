	
  JMP STORE_A
  DB 0
  DB 0				

STORE_A:
  IN	00
  CMP AL,0D
  JZ STORE_B
  MOV [03], AL
  JMP STORE_A

STORE_B:
  IN 00
  CMP AL,0D
  JZ INIT
  MOV [04], AL
  JMP STORE_B
  

INIT:	
  MOV AL, [03]
  MOV BL, [04]
  SUB AL, 30
  SUB BL, 30

DO:	
  PUSH AL
  PUSH BL

  CALL 60

  POP AL
  POP BL

  JMP IF

IF:
  CMP BL, 0
  JZ END
  JMP DO

PROC:
  ORG	60	; Code starts at address [30]
  POP DL
  POP BL
  POP AL
  MOD	AL,BL	
  PUSH AL
  PUSH BL
  PUSH DL

  RET		



END:

  ADD AL, 30
  MOV [C0], AL 

  END

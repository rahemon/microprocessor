.MODEL SMALL
.STACK 100H
.DATA 
      TEXT DB "ENTER THE NUMBER: $"
      TEXT2 DB 10,13,"FACTORIAL IS: $"
.CODE
MAIN PROC
    MOV AX, @DATA  
    MOV DS, AX 
      
    MOV AH,09
    LEA DX,TEXT
    INT 21H 
    
    MOV AH,01
    INT 21H
    SUB AL,30H
    MOV BL,AL  
    
    MOV AH,09
    LEA DX,TEXT2
    INT 21H
    
    MOV AX,1
    FACT:
    MUL BL
    DEC BL
    JNZ FACT
    ADD AL,30H
    MOV DL,AL
    MOV AH,02
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
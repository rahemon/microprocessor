.MODEL SMALL
.STACK 100H
.DATA 
    TEXT DB "ENTER THE NUMBER: $"
    TEXT1 DB 10,13,"THE NUMBER IS ODD.$"
    TEXT2 DB 10,13,"THE NUMBER IS EVEN.$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX

    
    MOV AH,09
    LEA DX,TEXT
    INT 21H
    MOV AH,01
    INT 21H
    SUB AL,30H
    

    
    
    MOV DX,0 
    MOV BX,2 
    DIV BX 

    CMP DX,0 
    JE EVEN
    JNE ODD 

    ODD:
    MOV AH,09
    LEA DX, TEXT1
    INT 21H
    JMP PRINT

    EVEN:
    MOV AH,09
    LEA DX, TEXT2
    INT 21H
    JMP PRINT
    
    PRINT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
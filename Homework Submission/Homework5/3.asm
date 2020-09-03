.MODEL SMALL
.STACK 100H

.DATA 
PROMPT_1 DB 'Enter an integer : $'
PROMPT_2 DB 'The integer is : $'  



.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,PROMPT_1
    MOV AH,9
    INT 21H  
    
    MOV CX,2
    MOV AH,1
    INT 21H 
    
    MOV BL,AL
   
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,PROMPT_2
    MOV AH,9
    INT 21H 
    
    CMP BL,30H
    
    JL @NEGATIVE
    JZ @ZERO
    JG @POSITIVE
    
    @NEGATIVE:
    MOV DL,'N'
    JMP @DISPLAY
    
    @ZERO:
    MOV DL,'Z'
    JMP @DISPLAY
    
    @POSITIVE:
    MOV DL,'P'
    JMP @DISPLAY 
    
    @DISPLAY:
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
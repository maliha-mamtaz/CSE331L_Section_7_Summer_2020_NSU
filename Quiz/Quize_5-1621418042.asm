.MODEL SMALL
.STACK 100H

.DATA 
PROMPT_1 DB 'Enter an integer less than 9 : $'
PROMPT_2 DB 'The number is : $'  



.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,PROMPT_1
    MOV AH,9
    INT 21H  
    
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

    CMP BL,BL
    
    JG Y
    JLE X
    
    Y:
    MOV DL,'Y'
    JMP @DISPLAY
    
    X:
     MOV DL,'X'
    JMP @DISPLAY
    
    @DISPLAY:
    MOV AH,2
    INT 21H
 
MAIN ENDP
END MAIN
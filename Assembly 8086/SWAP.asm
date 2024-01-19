TITLE TO EXCHANGE VALUES BETWEEN TWO VARIABLES
.MODEL SMALL
.STACK 100H
.DATA
           VAL1 DB 08H
           VAL2 DB 09H
.CODE
           MAIN PROC
                    MOV AX,@DATA
                    MOV DS,AX
                    
                    MOV AL,VAL1
                    MOV BL,VAL2
                    MOV VAL1,BL
                    MOV VAL2,AL
                    
                    MOV AH,4CH
                    INT 21H
           MAIN ENDP
END MAIN
                    
TITLE DISPLAY THE GIVEN STRING

.MODEL SMALL
.STACK 100H
.DATA
         STR DB 'HELLO WORLD!!!',0DH,0AH,'MY NAME IS XYZ',0DH,0AH,'I LIUE IN NEPAL','$'
.CODE
         MAIN PROC
                  MOV AX,@DATA
                  MOV DS,AX
                  
                  LEA DX,STR
                  
                  MOV AH,09H
                  INT 21H
                  
                  MOV AH,4CH
                  INT 21H
                  
         MAIN ENDP
END MAIN
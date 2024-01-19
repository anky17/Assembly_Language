TITLE COPY ARRAY OF DATA FROM ONE ARRAY TO ANOTHER ARRAY

.MODEL SMALL
.STACK 100H
.DATA
         ARR1 DB 10H,20H,30H,40H,50H
         ARR2 DB 5 DUP(?)
.CODE 
         MAIN PROC 
                  MOV AX,@DATA
                  MOV DS,AX
                  
                  LEA SI,ARR1
                  LEA DI,ARR2
                  
                  MOV CX,0005H
            NEXT: MOV AL,[SI]
                  MOV [DI],AL
                  INC SI
                  INC DI
                  LOOP NEXT
                  
                  MOV AH,4CH
                  INT 21H
          MAIN ENDP
END MAIN
TITLE MULTIPLY TWO 8 BIT NUMBERS USING REPEATED ADDITION

.MODEL SMALL
.STACK 100H
.DATA
            NUM1 DB 02H
            NUM2 DB 03H
            CAR DB 00H
            MUL1 DB 00H
.CODE
            MAIN PROC
                     MOV AX,@DATA
                     MOV DS,AX
                     
                     MOV CH,00H
                     MOV CL,NUM1
                     MOV AL,00H
                     
                NEXT:ADD AL,NUM2
                     JNC DOWN
                     INC DL
                    DOWN: LOOP NEXT
                     
                     MOV MUL1,AL
                     MOV CAR,DL
                     
                     MOV AH,4CH
                     INT 21H
              MAIN ENDP
END MAIN
                     
                     
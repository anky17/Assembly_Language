TITLE TO TAKE A CHARACTER AND DISPLAY IT BACK

.MODEL SMALL
.STACK 100H
.DATA
       STR1 DB 'Enter a character ','$'
       STR2 DB 0DH, 0AH,'The entered character ','$'
.CODE
       MAIN PROC
                MOV AX,@DATA
                MOV DS,AX
                
                LEA DX,STR1 ; TO PROMPT USER TO ENTER A CHARACTER
                MOV AH,09H
                INT 21H
                
                MOV AH,01H  ; FOR A CHARACTER I/P WITH ECHO
                INT 21H ; CHARACTER IS STORED AT AL
                
                MOV CL,AL ; MOVE THE ENTERED CHARACTER FROM AL REG. TO CL REG.
                
                LEA DX,STR2
                MOV AH,09H
                INT 21H
                
                MOV DL,CL 
                
                MOV AH,02H ; TO DISPLAY THE CHARACTER
                INT 21H
                
                MOV AH,4CH
                INT 21H
          MAIN ENDP
END MAIN
               

       
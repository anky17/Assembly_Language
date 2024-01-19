TITLE ADD TWO 16 BIT NUMBERS
.MODEL SMALL
.STACK 100H
.DATA
         DATA1 DW 0004H
         DATA2 DW 0002H
         SUM DW 0000H
.CODE
         MAIN PROC
                  MOV AX,@DATA
                  MOV DS,AX
                  
                  MOV AX,DATA1
                  ADD AX,DATA2
                  MOV SUM,AX
                  
                  MOV AH,4CH
                  INT 21H
                  
          MAIN ENDP
END MAIN
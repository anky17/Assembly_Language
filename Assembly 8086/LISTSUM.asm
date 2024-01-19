TITLE ADD LIST OF 16 BIT NUMBERS

.MODEL SMALL
.STACK 100H
.DATA
          LIST DW 0004H,0001H,0002H,0001H,0001H
          SUM DW 0000H
.CODE
          MAIN PROC
                   MOV AX,@DATA
                   MOV DS,AX
                   
                   LEA SI,LIST
                   MOV AX,0000H
                   ADD AX,[SI]
                   ADD AX,[SI+2]
                   ADD AX,[SI+4]
                   ADD AX,[SI+6]
                   ADD AX,[SI+8]
                 
                   MOV SUM,AX
                   
                   MOV AH,4CH
                   INT 21H
           MAIN ENDP
END MAIN
TITLE TO PRINT 26 ALPHABETS

.MODEL SMALL
.STACK 100H
.DATA
.CODE
  	  MAIN PROC
  	          ;CREATING A MICRO FOR SPACE
      		  SPACE MACRO
            	  MOV DL, ' '
            	  MOV AH, 02H;
            	  INT 21H    
            	  ENDM
        
        	  MOV AX, @DATA
        	  MOV DS, AX
                  
                  ;SETTING CX AS A COUNTER AND DL=A AS INITIAL VALUE
        	  MOV CH,00H
        	  MOV CL, 1AH ;26 ALPHABETS=1AH HEX VALUE
        	  MOV DL, 'A' ;DL='A'
         	  PRINT:
            	  MOV AH, 02H ;DOS FUNCTION CALL TO PRINT A CHARACTER
            	  INT 21H
            	  
            	  PUSH DX  ;PUSH DX VALUE TO STACK TO PREVENT OVERWRITTEN FROM SPACE
                  SPACE ;TO PRINT THE SPACE BETWEEN TWO ALPHABETS
            	  POP DX ; POP FROM STACK
            	  INC DL ;TO PRINT THE NEXT ALPHABET
                  LOOP PRINT
            
            	  MOV AH, 4CH
            	  INT 21H        
       MAIN ENDP
END MAIN 
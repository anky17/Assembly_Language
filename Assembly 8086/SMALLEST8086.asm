TITLE TO FIND THE SMALLEST LEMENT IN THE GIVEN 8-BIT DATA ARRAY

.MODEL SMALL
.STACK 100H
.DATA
	LIST DB 02H,01H,0AH,0CH,0EH,03H
	COUNT DW 0006H
	SMALL DB 00H
.CODE
	MAIN PROC
		MOV AX,@DATA
		MOV DS,AX
		
		DEC COUNT ; BECAUSE 1ST DATA IS ALREADY COPIED TO AL REG.
		MOV CX,COUNT
		
		LEA SI,LIST
		MOV AX,[SI] ; ASSUMING AX AS SMALLEST DATA
		
		;LOOP TO CHECK COMPARE AND FIND THE SMALLEST DATA
		UP:INC SI
		CMP AL,[SI]
		JC DOWN
		MOV AL,[SI]
		
		DOWN:
		LOOP UP
		
		MOV SMALL,AL ; COPY SMALLEST DATA FROM AL TO SMALL 
		
		;FUNCTIONAL CALL TO END THE PROGRAM
		MOV AH,4CH
		INT 21H
	MAIN ENDP
END MAIN 
		
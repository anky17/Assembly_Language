TITLE TO COUNT AND PRINT NO. OF OCCURENCE OF LETTER IN GIVEN STRING

.MODEL SMALL
.STACK 100H
.DATA
	STR DB 'microprocessor organization','$'
	LEN DW 001BH
	COUNT DB 00H
.CODE
	MAIN PROC
		MOV AX,@DATA
		MOV DS,AX
		
		MOV CX,LEN
		
		MOV DL,COUNT
		LEA SI,STR
		
	 REPEAT:MOV BL,[SI]
		CMP BL, 'o'
		JNE DOWN
		INC DL
		
	   DOWN:INC SI
	   	LOOP REPEAT 
	   	MOV COUNT,DL
	   	
	   	MOV AH,4CH
	   	INT 21H
	   MAIN ENDP
END MAIN
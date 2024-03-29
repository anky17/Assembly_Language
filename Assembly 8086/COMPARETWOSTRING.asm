TITLE TAKING TWO STRING FROM USER AND COMPARING WHETHER BOTH ARE SAME OR NOT

.MODEL SMALL
.STACK 100H
.DATA
	INPUT1 DB 'Enter first string ','$'
	STR1 DB 50 DUP ('$')
	
	INPUT2 DB 0DH,0AH,'Enter second string ','$'
	STR2 DB 50 DUP('$')
	
	SAME DB 0DH,0AH,'Both string are same','$'
	DIFF DB 0DH,0AH,'Both string are different','$'
.CODE
	MAIN PROC
		MOV AX,@DATA
		MOV DS,AX
		
		MOV AH,09H ; TO ASK USER FOR FIRST STRING
		LEA DX,INPUT1
		INT 21H
		
		MOV AH,0AH ;INPUT ENTERED STRING
		LEA DX,STR1
		INT 21H
		
		MOV AX,@DATA ;FOR STORING SECOND STRING IN EXTRA SEGMENT(ES)
		MOV ES,AX
		
		MOV AH,09H ; TO ASK USER FOR SECOND STRING
		LEA DX,INPUT2
		INT 21H
		
		MOV AH,0AH ; INPUT ENTERED STRING
		LEA DX,STR2
		INT 21H
		
		MOV SI,OFFSET STR1
		MOV DI,OFFSET STR2
		
		MOV CX,0032H ;32H=50 DEC AS INPUT
		
		CLD ; CLEAR DIRECTION FLAG WHICH SCANS IN FORWARD DIRECTION
		
		REPE CMPSB ; COMPARE STRING BYTE I.E. CMP(DS:SI), (ES:DI) AND REPE 
		 	   ; MEANS REPEAT UNTIL CX=0 OR UNTIL COMPARED BYTES ARE NOT 
		 	   ; EQUAL
		
		JNZ DOWN
		MOV AH,09H ; PRINTING STRING ARE SAME
		LEA DX,SAME
		INT 21H
		 
		JMP LAST
		
	  DOWN: MOV AH,09H ;PRINTING STRING ARE DIFFERENT
	  	LEA DX,DIFF
	  	INT 21H
	  	
	  LAST: MOV AH,4CH
	  	INT 21H
	  	
	 MAIN ENDP	 
END MAIN
		
		
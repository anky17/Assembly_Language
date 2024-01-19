TITLE TO INPUT STRING AND DISPLAY IT BACK

.MODEL SMALL                                 
.STACK 100                                   
.DATA                                        
    IN1 DB "Enter a string $"                      
    OUT1 DB 0DH,0AH, "The entered string is $"                   
    NAME DB 80 DUP('$')
   
.CODE                                        
		MAIN PROC                                    
    			MOV AX,@DATA                             
 			MOV DS,AX  
                        
                        ;PROMPT USER TO ENTER STRING         
    			LEA DX,IN1                              
    			MOV AH,09H                               
    			INT 21H                                 

    			;STRING INPUT INTERRUPT CALL
    			LEA DX,NAME                            
    			MOV AH,0AH                               
    			INT 21H                                                              
 
    			;PRINT THE PROMPT                                                                           
    			MOV AH,09H
    			LEA DX,OUT1
    			INT 21H
    			
    			;PRINT THE ENTERED STRING
     			MOV AH,09H                      
    			LEA DX,NAME+2 ;BYTE:0 MAX NO.OF CHARACTER TO READ i.e length 
    			              ;BYTE:1 NO.OF CHARACTER ACTUALLY READ i.e length
    			              ;BYTE:2 STRING READ FROM KEYBOARD                                
    			INT 21H                                  
        
    			MOV AH,4CH                              
    			INT 21H                                  
	       MAIN ENDP
END MAIN
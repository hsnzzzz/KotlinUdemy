.586
.MODEL FLAT
INCLUDE io.h
cr  EQU   0dh
lf  EQU   0dh
.STACK 4096
.DATA
      num1 DWORD  ?
	  x    DWORD  ?
	  str1   BYTE  "the first  number",0
	  str2   BYTE  "the second number",0
	  str3   BYTE  "the thired number",0
	  str4   BYTE  "the fourth number",0
	 string  BYTE 40 DUP (?)
	  result1 BYTE "the sum is",0
	  result  BYTE  11 DUP (?),0
	  sum     BYTE  11 DUP(?),0
.CODE
 _MainProc PROC
	 input  str1,string, 40 
	 atod  string
	 MOV num1 , eax
	 input  str2, string,40
	 atod string
	 ADD eax , num1
	 MOV num1 , eax
	 input  str3,string, 40 
	 atod  string
	 ADD eax , num1
	 MOV num1 , eax
	 input  str4,string, 40 
	 atod  string
	 ADD eax , num1
	 MOV num1 , eax
	dtoa   result , eax
	output   result1 , result
	mov bx,4
	cwd
	div bx
	dtoa   result , eax
	output   result1 , result

	MOV eax , 0
	ret
_MainProc ENDP
 END

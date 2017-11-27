.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
      num1 DWORD  ?
	  num2 DWORD  ?
	  num3 DWORD  ?
	  str1   BYTE  "the first  number",0
	  str2   BYTE  "the second number",0
	  str3   BYTE  "the thired number",0
	 string  BYTE 40 DUP (?)
	  result1 BYTE "the result is",0
	  result  BYTE  11 DUP (?),0
.CODE
 _MainProc PROC
	 input  str1,string, 40 
	 atod  string
	 MOV num1 , eax
	 input  str2, string,40
	 atod string
	 MOV num2 , eax
	 ADD eax , num1
	 MOV num1 , eax
	input  str3, string , 40
	atod string
	MOV num3 , eax
	                                       ;mov ebx, 2
	imul eax,2
	neg eax  
	ADD eax , num1
	ADD eax , 1
	neg eax 
	dtoa   result , eax
	output   result1 , result
	MOV eax , 0
	ret
_MainProc ENDP
 END

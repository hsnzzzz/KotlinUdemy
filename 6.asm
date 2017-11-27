.586
.MODEL FLAT
INCLUDE IO.H
cr  EQU   0dh
lf  EQU   0dh
.STACK 4096
.DATA
	num1 DWORD ?
	num2 DWORD ?
	num3 DWORD ?
	num4 DWORD ?
	wei1 DWORD ?
	wei2 DWORD ?
	wei3 DWORD ?
	wei4 DWORD ?
	  str1   BYTE  "the grade1  number",0
	  str2   BYTE  "the wieght number",0
	  str3   BYTE  "the grade2 number",0
	  str4   BYTE  "the wieght number",0
	  str5   BYTE  "the grade3 number",0
	  str6   BYTE  "the wieght number",0
	  str7   BYTE  "the grade4 number",0
	  str8   BYTE  "the wieght number",0
	  string BYTE   40 DUP (?)
	  result1 BYTE  "the average is",0
	  result2 BYTE  "the the weight is",0
	  result3 BYTE  "the sum is",0
	  resultavg  BYTE  11 DUP (?),0
	  sum        BYTE  11 DUP (?),0
	  weight     BYTE  11 DUP (?),0
.CODE
 _MainProc PROC
	 input  str1,string, 40 
	 atod  string
	 MOV num1 , eax
	 input  str2, string,40
	 atod string
	 MOV wei1 , eax
	 imul eax,num1
	 mov num1,eax
	 input  str3,string, 40 
	 atod  string
	 MOV num2 , eax
	 input  str4,string, 40 
	 atod  string
	 MOV wei2 , eax
	 imul eax,num2
	 add eax,num1
	 mov num1,eax
	 mov eax,wei2
	 add eax, wei1
	 mov wei1,eax
	 input  str5,string, 40 
	 atod  string
	 MOV num3 , eax
	  input  str6,string, 40 
	 atod  string
	 MOV wei3 , eax
	 imul eax,num3
	 add eax,num1
	 mov num1,eax
	 mov eax,wei3
	 add eax, wei1
	 mov wei1,eax
	 input  str7,string, 40 
	 atod  string
	 MOV num4 , eax
	  input  str8,string, 40 
	 atod  string
	 MOV wei4 , eax
	 imul eax,num4
	 add eax,num1
	  mov num1,eax
	  mov eax,wei4
	 add eax, wei1
	 mov wei1,eax
	 mov eax,num1
	 dtoa   sum , eax
	output   result3 , sum
	mov eax,wei1
	 dtoa   weight , eax
	output   result2 , weight
	mov ebx,wei1
	mov eax,num1
	cwd
	div bx
	dtoa   resultavg , eax
	output   result1 , resultavg
	MOV eax , 0
	ret
_MainProc ENDP
 END
	
	
	
	;
	



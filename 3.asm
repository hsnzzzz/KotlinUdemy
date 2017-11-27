.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
      num DWORD  ?
	   str1   BYTE  "the first  number",0
	  str2   BYTE  "the second number",0
	  string  BYTE 40 DUP (?)
	  result1 BYTE "the result is",0
	  result  BYTE  11 DUP (?),0
.CODE
 _MainProc PROC
	 input  str1,string, 40 
	 atod  string
	 MOV num , eax
	 input  str2, string,40
	 atod string
	  ADD eax , num
	  imul eax,2
	  dtoa   result , eax
	output   result1 , result
	MOV eax , 0
	ret
_MainProc ENDP
END
	 
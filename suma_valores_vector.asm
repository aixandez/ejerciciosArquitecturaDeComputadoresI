; Suma los valores de un vector

JMP start

vector: 
DB  5; Valor 1
DB  6; Valor 2
DB  7; Valor 3
DB  8; Valor 4
DB  '/' ; Fin

start:


MOV C, vector	; vector -> C 

.loop: 
	ADD A , [C]
	INC  C
	MOV D , [C]
	CMP D , '/'	
	JNZ .loop


HLT

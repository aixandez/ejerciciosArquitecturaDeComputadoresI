JMP main
var1:
	DB "GATT"
	DB 0
var2:
	DB "GATO"
	DB 1
main:
	MOV A, var1
	MOV B, var2
	CALL loop
loop:
	MOV C, [A]
	MOV D, [B]
	INC A
	INC B
	CMP C, D 
	JZ loop
	MOV A, 0
	CMP C, A
	JZ iguales
diferentes:
	MOV D, 232
	MOV [D], 48

MOV [232], 'N'
MOV [233], 'O'
MOV [234], ' '
MOV [235], 'S'
MOV [236], 'O'
MOV [237], 'N'
MOV [238], ' '
MOV [239], 'I'
MOV [240], 'G'
MOV [241], 'U'
MOV [242], 'A'
MOV [243], 'L'
MOV [244], 'E'
MOV [245], 'S'
	HLT
iguales:
	MOV D, 232
	MOV [D], 49

MOV [232], 'I'
MOV [233], 'G'
MOV [234], 'U'
MOV [235], 'A'
MOV [236], 'L'
MOV [237], 'E'
MOV [238], 'S'

	HLT

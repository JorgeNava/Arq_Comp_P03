.text
.global cicloWhile
.type cicloWhile function

cicloWhile:
MOVS r0,#0 //r0 = n
SUB r0,r0,#2
inicioWhile:
MOVS r1,r0
SUB r0,r0,#1
CMP r1,#0
BEQ finalWhile
nop
B inicioWhile

finalWhile:
BX LR

/*
int n = 20;
while (n--);
*/

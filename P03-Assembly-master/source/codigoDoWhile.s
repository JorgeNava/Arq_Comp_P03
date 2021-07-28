.text
.global cicloDoWhile
.type cicloDoWhile function

cicloDoWhile:
MOVS r0,#0  //r0 = n
MOVS r1,#0
SUB r0,r0,#3
//SUB r1,r1,#2
inicioDoWhile:
ADD r0,r0,#1
nop
CMP r0,r1
BGE finalDoWhile
B inicioDoWhile

finalDoWhile:
BX LR

/*
int n = 1;
do
{
   n++;
}
while (n < 0)
*/

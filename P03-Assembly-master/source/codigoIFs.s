.text
.global codeIFs
.type codeIFs function

codeIFs:
/*MOVS r0,#10 //bNumber1
MOVS r1,#5  // bNumber2*/
MOVS r2,#0  //ubCounter
inicioIFs:
CMP r0,r1
BLT sumar
BEQ iguales
B restar

sumar:
ADD r2,r2,#1
B finalIFs

iguales:
ADD r2,r0,r1
B finalIFs

restar:
SUB r2,r2,#1
B finalIFs

finalIFs:
BX LR

/*
void vfnCompareNumbers (usigned char bNumber1, unsigned char bNumber2)
{
if (bNumber1 < bNumber2)
{
    ubCounter++;
}
else if (bNumber1 == bNumber2)
{
    ubCounter = bNumber1 + bNumber2;
}
else
{
    ubCounter--;
}

}
*/

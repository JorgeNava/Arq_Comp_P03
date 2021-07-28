.text
.global cicloFor
.type cicloFor function

cicloFor:
MOVS r0,#5  //r0 = sum
MOVS r1,#4  // r1 = 0 = i

inicioFor:
CMP r0,r1
BLE finalFor  // BLE checa si es menor o igual  	Z = 1 and N != V
ADD r1,r1,#1
ADD r1,r1,#1
B inicioFor

finalFor:
nop
BX LR

/*
    int sum = 15;
    for (int i=0; i < sum; i++)
    {
       i += 1;
       printf("%i\n",i);
    }
*/

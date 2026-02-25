/* Aplicando um reajuste salarial e depois parcelando o valor*/

DEFINE VARIABLE dSalario AS DECIMAL DECIMALS 2 NO-UNDO INITIAL 2000.00.

/* 1. Aumento de 10% (Multiplicar por 1.10) */
/* Equivale a: dSalario = dSalario * 1.10 */
dSalario *= 1.10. 

MESSAGE "Novo Salário com 10% de aumento: " dSalario 
    VIEW-AS ALERT-BOX. 
   
/* 2. Descobrir o valor quinzebal (Dovidir por 2) */
/* Equivale a: dSalario = dSalario / 2 */
dSalario /= 2. 

MESSAGE "valor da quinzena: " dSalario
    VIEW-AS ALERT-BOX

/* Escreva um programa que exiba o resultado de 2a x 3b, em que a vale
3 e b vale 5.*/

DEFINE VARIABLE a AS INTEGER NO-UNDO INITIAL 3.
DEFINE VARIABLE b AS INTEGER NO-UNDO INITIAL 5.
DEFINE VARIABLE iResultado AS INTEGER NO-UNDO.

ASSIGN iResultado = a + b.

MESSAGE 
        "Valor de a:" a SKIP
        "Valor de b:" b SKIP(1)
        "O resultado é:" iResultado VIEW-AS ALERT-BOX. 

/* Escreva um programa que calcule a soma de três variaveis e imprima
o resultado na tela*/

DEFINE VARIABLE a AS INTEGER NO-UNDO INITIAL 4.
DEFINE VARIABLE b AS INTEGER NO-UNDO INITIAL 5.
DEFINE VARIABLE c AS INTEGER NO-UNDO INITIAL 10.
DEFINE VARIABLE iResultado AS INTEGER NO-UNDO.

ASSIGN iResultado = a + b + c.

MESSAGE 
        "Valor de a: " a SKIP
        "Valor de b: " b SKIP
        "Valor de c:"  c SKIP
        "A soma de a + b + c é:" iResultado VIEW-AS ALERT-BOX

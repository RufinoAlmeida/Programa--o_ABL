DEFINE VARIABLE valor1 AS INTEGER NO-UNDO INITIAL 10.
DEFINE VARIABLE valor2 AS INTEGER NO-UNDO INITIAL 20.
DEFINE VARIABLE resultado AS INTEGER NO-UNDO.

/*Realiza a soma */

ASSIGN resultado = valor1 + valor2.

/* Exibe o resultado */

MESSAGE "A soma de " valor1 " + " valor2 " é igual a: " resultado
    VIEW-AS ALERT-BOX INFORMATION TITLE "calculadora".

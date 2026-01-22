DEFINE VARIABLE iNum AS INTEGER NO-UNDO.

MESSAGE "Iniciando Loop..." VIEW-AS ALERT-BOX.

/* Este bloco repete até o contador chegar a 5 */
MeuLoop: /* Dando um nome (label) ao bloco */
REPEAT:
    iNum = iNum + 1.
    
    DISPLAY "Contando: " iNum WITH FRAME f-contador.
    
    /* Condição de saída */
    IF iNum = 5 THEN LEAVE MeuLoop.
END.

MESSAGE "Saiu do Loop!" VIEW-AS ALERT-BOX.

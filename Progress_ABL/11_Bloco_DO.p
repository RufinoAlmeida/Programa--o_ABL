DEFINE VARIABLE iContador AS INTEGER NO-UNDO.

/* O IF só aceita uma instrução depois do THEN.
O DO permite colocar várias. */

IF 10 > 5 THEN DO:
    ASSIGN iContador = iContador + 1.
    MESSAGE "Entrou no bloco DO" VIEW-AS ALERT-BOX.
    
    /* Qualquer lógica aqui dentro faz parte deste grupo */
    
END.

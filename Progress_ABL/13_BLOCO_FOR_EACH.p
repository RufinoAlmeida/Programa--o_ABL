/* Define uma Temp-Table para o exemplo funcionar sem banco conectado */
DEFINE TEMP-TABLE tt-Cliente NO-UNDO
    FIELD Codigo AS INTEGER
    FIELD Nome   AS CHARACTER.

CREATE tt-Cliente. ASSIGN Codigo = 1 Nome = "Ana".
CREATE tt-Cliente. ASSIGN Codigo = 2 Nome = "Beto".

/* Bloco que percorre cada registro */
FOR EACH tt-Cliente NO-LOCK:
    
    /* Se o código for 1, pula para o próximo registro sem executar o resto abaixo */
    IF tt-Cliente.Codigo = 1 THEN NEXT.

    MESSAGE "Processando Cliente: " tt-Cliente.Nome VIEW-AS ALERT-BOX.

END.

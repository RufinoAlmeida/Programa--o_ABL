DEFINE VARIABLE erro AS LOGICAL NO-UNDO.

MESSAGE "Iniciando Transação.." VIEW-AS ALERT-BOX.

/*Tudo o que acontece aqui dentro é "tudo ou nada" */
TransacaoBancaria:
DO TRANSACTION:

    /* 1. Cria um registro (simulado) */
    /* CREATE Customer...*/
    MESSAGE "Cliente criado.." VIEW-AS ALERT-BOX.
    
    /* 2. Simula um erro na lógica */
    erro = TRUE.
    
    IF  erro = TRUE THEN DO:
         MESSAGE "Ocorreu um erro! Desfazendo tudo (Rollbanck)."
            VIEW-AS ALERT-BOX ERROR.
        
        /* UNDO desfaz as gravações no banco.
           LEAVE sai do bloco. */
         UNDO TransacaoBancaria, LEAVE TransacaoBancaria.
     END.
     
     MESSAGE "Esta mensagem nunca aparecerá se der erro acima." VIEW-AS ALERT-BOX.     
END.

MESSAGE "Fim do processo." VIEW-AS ALERT-BOX

/* Você avalia uma variável e define um valor ou exibe uma mensagem com base 
no resultado. */

DEFINE VARIABLE cStatus AS CHARACTER NO-UNDO INITIAL "P".
DEFINE VARIABLE cDescricao AS CHARACTER NO-UNDO.

/* Inicio da avalação do CASE */
CASE cStatus:

    WHEN "A" THEN
        cDescricao = "Cliente Ativo".
    
    WHEN "I" THEN
        cDescricao = "Cliente Inativo".
    WHEN "P" THEN
        cDescricao = "Aprovação Pendente".
    
    /* O OTHERWISE captua qualquer valor que não seja A, I ou P */
    OTHERWISE
        cDescricao = "Status Desconhecido".
        
END CASE. /* Importante: O bloco sempre termina com END CASE. */

MESSAGE "O status atual é: " cDescricao VIEW-AS ALERT-BOX INFORMATION.

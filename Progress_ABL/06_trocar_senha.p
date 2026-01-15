/* 1. TODAS as variáveis devem ser definidas no início */
DEFINE VARIABLE usuarioCadastrado AS CHARACTER NO-UNDO INITIAL "admin".
DEFINE VARIABLE senhaCadastrada   AS CHARACTER NO-UNDO INITIAL "1234".

DEFINE VARIABLE usuario   AS CHARACTER NO-UNDO.
DEFINE VARIABLE senha     AS CHARACTER NO-UNDO.
/* Mudamos 'opcao' para LOGICAL para capturar o botão SIM/NÃO */
DEFINE VARIABLE TrocarSenha AS LOGICAL   NO-UNDO. 
DEFINE VARIABLE novaSenha    AS CHARACTER NO-UNDO.

/* Pede login */
/* DICA: PASSWORD-FIELD esconde os caracteres digitados */
UPDATE usuario LABEL "Usuário"
       senha   LABEL "Senha"   PASSWORD-FIELD. 

/* Verifica se login e senha estão corretos */
IF usuario = usuarioCadastrado AND senha = senhaCadastrada THEN DO:

    /* O UPDATE aqui captura se o usuário clicou em SIM (TRUE) ou NÃO (FALSE) */
    MESSAGE "Login efetuado com sucesso!" SKIP
            "Deseja trocar a senha?"
        VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO
        TITLE "Confirmação"
        UPDATE TrocarSenha.

    /* Se clicou em SIM (YES retorna TRUE) */
    IF TrocarSenha = TRUE THEN DO:
        
        UPDATE novaSenha LABEL "Digite a nova senha:" PASSWORD-FIELD.

        ASSIGN senhaCadastrada = novaSenha.

        MESSAGE "Senha alterada com sucesso! Nova senha: " senhaCadastrada
            VIEW-AS ALERT-BOX INFO.
    END.
    ELSE DO:
        MESSAGE "Acesso liberado sem mudanças."
            VIEW-AS ALERT-BOX INFO.
    END.
END.

/* Se login ou senha estão errados */
ELSE DO:
    MESSAGE "Informações incorretas"
        VIEW-AS ALERT-BOX ERROR.
END.

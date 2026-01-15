DEFINE VARIABLE nome AS CHARACTER NO-UNDO.
DEFINE VARIABLE cidade AS CHARACTER NO-UNDO.

/* DICA: O comando SET faz o mesmo que UPDATE, mas é mais comum para variáveis simples */
SET nome   LABEL "Digite seu nome"
    cidade LABEL "Digite sua cidade".

/* Exibindo tudo junto */
MESSAGE "Confirmação de dados:" SKIP(1)
        "Nome:   " nome SKIP
        "Cidade: " cidade
    VIEW-AS ALERT-BOX INFORMATION TITLE "Resultado".
    

/* Use o comando SKIP para quebrar a linha.
/* Visual: Adicionado INFORMATION e TITLE paa deixar a caixa de alerta mais profissional.

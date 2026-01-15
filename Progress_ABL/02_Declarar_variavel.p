DEFINE VARIABLE nome AS CHARACTER NO-UNDO.
DEFINE VARIABLE idade AS INTEGER   NO-UNDO.
DEFINE VARIABLE cidade AS CHARACTER NO-UNDO.

ASSIGN
    nome  = "Bruno"
    cidade = "Betim"
    idade = 28.   

MESSAGE "Nome: " nome SKIP
        "Cidade: " cidade SKIP
        "Idade: " idade
        
    VIEW-AS ALERT-BOX INFO.

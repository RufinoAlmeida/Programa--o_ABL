DEFINE VARIABLE numero AS INTEGER NO-UNDO.

REPEAT:
    UPDATE numero LABEL "Digite um número (0 para sair):".

    IF numero = 0 THEN
        LEAVE.
END.

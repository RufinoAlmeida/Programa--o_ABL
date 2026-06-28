/* Determina se uma pessoa deve ou não pagar imposto. Considerando que quem recebe
acima de R$1200 deve pagar. */

DEFINE VARIABLE dSalario AS DECIMAL DECIMALS 2 NO-UNDO.
DEFINE VARIABLE lPagaImposto AS LOGICAL NO-UNDO.
UPDATE dSalario LABEL "Informe o seu salário (R$)".

ASSIGN lPagaImposto = (dSalario > 1200.00).

IF lPagaImposto = TRUE THEN DO:

    MESSAGE "Seu salário é R$" dSalario SKIP(1)
            "Status: Você deve pagar imposto."
         VIEW-AS ALERT-BOX WARNING TITLE "Aviso de Tributação".
END.

ELSE DO:
    MESSAGE "Seu salário é R$:" dSalario SKIP(1)
            "Status: Você está isento de imposto."
      VIEW-AS ALERT-BOX INFORMATION TITLE "Aviso de Tributação".
END.

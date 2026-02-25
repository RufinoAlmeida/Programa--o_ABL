/* Criando dados em memória para o exemplo rodar */
DEFINE TEMP-TABLE tt-Funcionario NO-UNDO
    FIELD ID AS INTEGER
    FIELD Nome AS CHARACTER
    FIELD Depto AS CHARACTER.

CREATE tt-Funcionario. ASSIGN ID = 1 Nome = "Carlos" Depto = "TI".
CREATE tt-Funcionario. ASSIGN ID = 2 Nome = "Ana"    Depto = "RH".
CREATE tt-Funcionario. ASSIGN ID = 3 Nome = "Bia"    Depto = "TI".
CREATE tt-Funcionario. ASSIGN ID = 4 Nome = "Edu"    Depto = "Vendas".

/* O DOWNFRAME: O Progress exibe uma linha abaixo da outra automaticamente */
FOR EACH tt-Funcionario NO-LOCK:
    DISPLAY 
        tt-Funcionario.ID    COLUMN-LABEL "Cód."
        tt-Funcionario.Nome  FORMAT "x(20)"
        tt-Funcionario.Depto FORMAT "x(10)".
END.


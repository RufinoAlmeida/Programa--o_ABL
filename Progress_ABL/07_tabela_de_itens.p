/* Temp-tables são tabelas em memória. São esseniais no Progress para manipular dados
temporários antes de gravar no banco ou para passar dados entre programas.*/

/* Definição da estrutura da Temp-Table */
DEFINE TEMP-TABLE Produto NO-UNDO
    FIELD Codigo    AS INTEGER
    FIELD Descricao AS CHARACTER
    FIELD Preco     AS DECIMAL DECIMALS 2
    INDEX idx1 IS PRIMARY UNIQUE Codigo.

/* Criando registros na memória (Create) */
CREATE Produto.
ASSIGN 
    Produto.Codigo    = 101
    Produto.Descricao = "Teclado Mecânico"
    Produto.Preco     = 250.00.

CREATE Produto.
ASSIGN 
    Produto.Codigo    = 102
    Produto.Descricao = "Mouse Gamer"
    Produto.Preco     = 120.50.

/* Lendo a Temp-Table */
FOR EACH Produto NO-LOCK:
    DISPLAY Produto.Descricao Produto.Preco.
END.

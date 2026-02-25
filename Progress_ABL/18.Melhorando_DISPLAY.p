/* Formatação e Rótulos. Ao prototipar, muitas vezes os dados crus são 
feios ou os nomes das variáveis não fazem sentido para quem lê. O display permite 
formatar isso na hora.*/

DEFINE VARIABLE dPreco AS DECIMAL NO-UNDO INITIAL 1250.50.
DEFINE VARIABLE dDesconto AS DECIMAL NO-UNDO INITIAL 0.10. /* 10% */
DEFINE VARIABLE dPrecoFinal AS DECIMAL NO-UNDO. 

dPrecoFinal = dPreco * (1 - dDesconto).

DISPLAY 
    dPreco LABEL "Preço Original" FORMAT "->,>>9.99"
    dDesconto LABEL "Taxa Desc." FORMAT ">>9%"
    dPrecoFinal LABEL "Preço a Pagar" FORMAT "R$ ->,>>9.99"
    WITH FRAME f-preco CENTERED TITLE "Calculadora de Desconto".
    
/* WITH FRAME permite centralizar a janela e dar um titulo a ela */

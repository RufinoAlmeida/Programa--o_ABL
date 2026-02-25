/* DISPLAY cria automaticamente um frame e formata os dados para você */

/* Exibindo Variáveis Simples. Você define dados e pede para o sistema mostrá-los.
O Progress cria atuoamticamente os rótulos (labels) baseados no nome de varivável*/

DEFINE VARIABLE cNome AS CHARACTER NO-UNDO INITIAL "Progress ABL".
DEFINE VARIABLE dVersao AS DECIMAL NO-UNDO INITIAL 50.5.
DEFINE VARIABLE dDataTeste AS DATE NO-UNDO INITIAL TODAY.

/* O DUSPLAY cria uma janela padrão e joga as variáveis lá */

DISPLAY
    cNome
    dVersao
    dDataTeste.

    

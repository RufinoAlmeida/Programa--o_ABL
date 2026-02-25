/* Um controle de pontuação de um jogo ou meta de vendas */

DEFINE VARIABLE iPontos AS INTEGER NO-UNDO INITIAL 100.
MESSAGE "Pontos Iniciais: " iPontos VIEW-AS ALERT-BOX. 

/* 1. Ganhou 50 pontos (Equivale a: iPontos = iPontos +50) */
iPontos += 50.
MESSAGE "Após bônus (+=50): "iPontos VIEW-AS ALERT-BOX. 

/*pERDEU 20 PONTOS (Equivale a: iPontos = iPontos -20) */
iPontos -= 20.

MESSAGE "Após penalidade (-=20): " iPontos VIEW-AS ALERT-BOX.

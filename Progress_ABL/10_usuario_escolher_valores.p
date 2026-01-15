DEFINE VARIABLE iNumA AS INTEGER NO-UNDO INITIAL 10.
DEFINE VARIABLE iNumB AS INTEGER NO-UNDO INITIAL 20.

/* Permite que o usuário altere os valores iniciais se quiser */
UPDATE iNumA LABEL "Primeiro Número"
       iNumB LABEL "Segundo Número".

MESSAGE "Resultado: " (iNumA + iNumB)
    VIEW-AS ALERT-BOX.

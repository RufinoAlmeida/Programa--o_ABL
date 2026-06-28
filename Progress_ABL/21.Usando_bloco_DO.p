/* Quando a condição for atendida, muitas vezes você precisa rodar
mais de um comando (como atualizar variáveis, chamar procedures e exibir mensagens)
para isso, combinamos o WHEN com m bloco DO: */

DEFINE VARIABLE iOpcaoMenu AS INTEGER NO-UNDO INITIAL 2.

CASE iOpcaoMenu:
    
    WHEN 1 THEN DO:
        MESSAGE "Opção 1 selecionada: Iniciando Cadastro." VIEW-AS ALERT-BOX.
        /* RUN CadastroCliente.p. */        
    END.

    WHEN 2 THEN DO:
        MESSAGE "Opção 2 selecionada: Gerando Relatório." VIEW-AS ALERT-BOX. 
        
    END.

    WHEN 3 THEN DO:
        MESSAGE "Saindo do sistema" VIEW-AS ALERT-BOX.
    
    END.
    
    OTHERWISE DO:
        /* Lidar com erros de digitação do usuário */
        MESSAGE "Erro: Opção de meu inválida! Digite 1, 2, ou 3."
            VIEW-AS ALERT-BOX ERROR TITLE "Atenção".
        
     END.

END CASE.

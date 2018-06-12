#language:pt
@release
Funcionalidade: Login 
    Para que eu somente possa ver minhas tarefas 
    Sendo um usuario 
    Posso logar no sistema com meus dados previamente cadastrados 

    #BDDT - Teste guiado ao compartamento 

    
    # Cenario: Login do Usuario 
    #  Dado que estou no formulario de Login 
    #  E prencho o campo email 
    #  E preencho o campo senha 123456
    #  Quando clico em entrar 
    #  Então sou autenticado com sucesso.

    Contexto: Formulario 
        Dado que acesso o formulario de login 

    @sprint1 @logout
    Cenario: Login do Usuario 
        
        Quando faço login com "eu@papito.io" e "123456" 
        Então sou autenticado com sucesso
    
    @sprint1
    Cenario: Senha Incorreta 
       
        Quando faço login com "eu@papito.io" e "102030"
        Então devo ver a mensagem de alerta "Senha inválida." 
    
    @sprint2
    Cenario: Usuário não Cadastrado 

        Quando faço login com "vaiplaneta@plt.com.br" e "102030"
        Então devo ver a mensagem de alerta "Usuário não cadastrado" 

    
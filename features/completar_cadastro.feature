#language:pt


Funcionalidade: Completar cadastro
    Para que eu possa ter meus dados atualizados 
    Sendo um usuario cadastro 
    Posso completar meu cadastro

    Contexto: Cadastro 
        Dado que acesso meu perfil

    @login @logout @release
    Cenario: Atualizar cadastro

        Quando completo o meu cadastro com os seguintes valores:
        | nome    | Rafael                         |
        | email   | teste@planeta.com.br           |
        | empresa | QA Ninja                       |
        | cargo   | CTO                            |
        Então devo ver a mensagem "Perfil atualizado com sucesso"

    @login @logout @release
    Cenario: Empresa com nome muito curto  
   
        Quando completo o meu cadastro com os seguintes valores:
        | nome    | Rafael                         |
        | email   | teste@planeta.com.br           |
        | empresa | oi                             |
        | cargo   | Developer                      |
        Então devo ver a mensagem "O nome da empresa deve ter no mínimo 3 caracteres."

    @login @logout @release
    Cenario: Nome deve ser obrigatório 
   
        Quando completo o meu cadastro com os seguintes valores:
        | nome    |                                |
        | email   | teste@planeta.com.br           |
        | empresa | Google                         |
        | cargo   | Developer                      |
        Então devo ver a mensagem "Nome completo é obrigatório."

    @login @logout @release
    Cenario: Email deve ser obrigatório 
   
        Quando completo o meu cadastro com os seguintes valores:
         | nome    | Rafael    |
        | email   |            |
        | empresa | QA Ninja   |
        | cargo   | Estagiario |
        Então devo ver a mensagem "Email é obrigatório."
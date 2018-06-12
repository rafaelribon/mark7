#language:pt


Funcionalidade: Completar cadastro
    Para que eu possa ter meus dados atualizados 
    Sendo um usuario cadastro 
    Posso completar meu cadastro

    @login @logout @release
    Cenario: Atualizar cadastro

        Dado que acesso meu perfil 
        Quando completo o meu cadastro com os seguintes valores:
        | empresa | QA Ninja |
        | cargo   | CTO      |
        Então devo ver a mensagem "Perfil atualizado com sucesso"

    @login @logout @release
    Cenario: Empresa com nome muito curto  
   
        Dado que acesso meu perfil 
        Quando completo o meu cadastro com os seguintes valores:
        | empresa | Oi        |
        | cargo   | Developer |
        Então devo ver a mensagem "O nome da empresa deve ter no mínimo 3 caracteres."

    Cenario: Nome deve ser obrigatório 
   
        Dado que acesso meu perfil 
        Quando completo o meu cadastro com os seguintes valores:
        | nome    |        |
        | empresa | Google |
        | cargo   | QA     |
        Então devo ver a mensagem "Nome completo é obrigatório."


    Cenario: Email deve ser obrigatório 
   
        Dado que acesso meu perfil 
        Quando completo o meu cadastro com os seguintes valores:
        | nome    | Rafael     |
        | email   |            |
        | empresa | QA Ninja   |
        | cargo   | Estagiario |
        Então devo ver a mensagem "Email é obrigatório."
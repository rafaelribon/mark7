
Dado('que acesso o formulario de login') do
# Carrega a pagina de login , que esta /login no Hooks    
   @login_page.load
end

Quando('faço login com {string} e {string}') do |email, senha|
   @login_page.logar(email,senha)
end

Então('sou autenticado com sucesso') do
   expect(page).to have_content 'Bem vindo ao Mark7.'
end 
   
Então('devo ver a mensagem de alerta {string}') do |mensagem_alerta|
   expect(page).to have_content mensagem_alerta 
end


Before  do
# Instacia  a  LoginPage 
    @login_page = LoginPage.new
    @nav = NavBar.new
    @perfil_page = PerfilPage.new
end

Before('@login') do 
    @login_page.load
    @login_page.logar('eu@papito.io', '123456')
end 

After('@logout') do
    @nav.menu_usuario.click
    @nav.logout.click
end

# tira print da evidencia 
After  do |scenario|
    #recebe o nome do cénario
    #troca os espaço por underscore  
    #converte maisculo em minusculo 
    nome_cenario = scenario.name.tr(' ','_').downcase!   
    #local onde vai gravar a evidencia
    # nome do cenario.png
    evidencia = "log/screenshots/#{nome_cenario}.png"
    #puts evidencia  #exibe o nome das evidencias para verificar funcionamento 
    page.save_screenshot(evidencia)
    embed(evidencia,'image/png','Clique aqui para ver a evidencia!')
end 
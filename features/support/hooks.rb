

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
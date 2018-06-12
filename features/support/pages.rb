# LoginPage é classe que  representa a página de login
# Conceito de Page Factory
class LoginPage < SitePrism::Page
    set_url '/login'
    element :campo_email, '#login_email'
    element :campo_senha, '#login_password'
    element :botao_entrar, 'button[id*=btnLogin]'

# Defino  o metodo 
    def logar (email,senha)
        campo_email.set email
        campo_senha.set senha
        botao_entrar.click
    end

end

# NavBar é classe que representa a barra de navegação superior
class NavBar < SitePrism::Page
    element :menu_usuario, 'a[href*="user_settings dropdown"]'
    element :menu_perfil, '.navbar a[href$=user_settings]'
    element :logout, 'a[href$=logout]'
end


# PerfilPage é classe que representa a página Meu Perfil 
class PerfilPage < SitePrism::Page
    element :campo_empresa, 'input[name="profile.company"]'
    element :combo_cargo, 'select[name="profile.job"]'
    element :botao_salvar, 'button[type=submit]'

    def seleciona_cargo(cargo)
        combo_cargo.find('option', text: cargo).select_option
    end


    def completa(cadastro)
        # campo_nome.set cadstro[:nome]
        # campo_nome.set cadstro[:email]
        campo_empresa.set cadastro[:empresa]
        seleciona_cargo cadastro[:cargo]
        botao_salvar.click
    end
    
end
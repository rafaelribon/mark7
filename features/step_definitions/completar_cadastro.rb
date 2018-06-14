
Dado("que acesso meu perfil") do
  @nav.menu_usuario.click
  @nav.menu_perfil.click
  
end

Quando("completo o meu cadastro com os seguintes valores:") do |table|
  @cadastro = table.rows_hash
#   @perfil_page.campo_empresa.set @cadastro[:empresa]
# #   #procura a opção do cargo , caso encontre  então seleciona a opção 
# #  # @perfil_page.combo_carga.find('option',text: @cadastro[:cargo]).select_option
#   @perfil_page.seleciona_cargo(@cadastro[:cargo])
#   @perfil_page.botao_salvar.click
  @perfil_page.completa(@cadastro)
end


Então("devo ver a mensagem {string}") do |mensagem|
  expect(page).to have_content  mensagem
end
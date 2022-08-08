Quando("eu acesso uma conta existente") do
    find('botao_login').click
    @front_auth.login
end
E("que ele segue para a pagina de registro de um novo usuario") do
  find('select_criar_conta').click
  find('select_criar_conta_cliente', wait: 5).hover.click
end

E("que ele segue para a pagina de registro de uma conta empresa") do
  find('select_criar_conta').click
  find('select_criar_conta_empresa', wait: 5).hover.click
end

Quando("o usuario insere dados com um CNPJ valido para criar uma conta") do
  @register_b2c.register_account_valid_cnpj
end

Quando("o usuario insere dados com um CNPJ invalido para criar uma conta") do
  @register_b2c.register_account_invalid_cnpj
end

Quando("o usuario insere dados com um CPF valido para criar uma conta") do
  @register_b2c.register_account_valid_cpf
end

Quando("o usuario insere dados com um CPF invalido para criar uma conta") do
  @register_b2c.register_account_invalid_cpf
end

Quando ("o usuario nao preenche os campos obrigatorios da conta") do
  @register_b2c.register_b2c_account_unfilled
end  

Quando("o usuario submete dados validos para criar uma conta b2b") do 
  @register_b2b.register_account_valid
end

Quando("o usuario submete dados invalidos para criar uma conta b2b") do
  @register_b2b.register_account_invalid

end

Quando ("o usuario nao preenche os campos obrigatorios da empresa") do
  @register_b2b.register_account_unfilled
end  
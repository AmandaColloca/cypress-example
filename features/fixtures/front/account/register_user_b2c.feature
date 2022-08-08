#language: pt
@regression @sanity @register_b2c 
Funcionalidade: Validar a funcionalidade de Cadastro para clientes B2C

  Contexto: Estar na pagina de registro de usuario
    Dado que o usuario visita o site "Carbono"
    E que ele segue para a pagina de registro de um novo usuario
    
  @b2c_valid_cnpj
  Cenario: Criar uma conta B2C com CNPJ valido
    Quando o usuario insere dados com um CNPJ valido para criar uma conta
    Entao o usuario deve visualizar a mensagem "Obrigado por registrar-se com Carbono."

  @b2c_invalid_cnpj
  Cenario: Validar tentativa de criacao de uma conta B2C com CNPJ invalido
    Quando o usuario insere dados com um CNPJ invalido para criar uma conta
    Entao o usuario deve visualizar a mensagem "CNPJ é inválido."

  @b2c_valid_cpf
  Cenario: Criar uma conta B2C com CPF valido
    Quando o usuario insere dados com um CPF valido para criar uma conta
    Entao o usuario deve visualizar a mensagem "Obrigado por registrar-se com Carbono."

  @b2c_invalid_cpf
  Cenario: Validar tentativa de criacao de uma conta B2C com CPF invalido
    Quando o usuario insere dados com um CPF invalido para criar uma conta
    Entao o usuario deve visualizar a mensagem "CPF é inválido."

  @b2c_no_data
  Cenario: Validar tentativa de criacao de uma conta B2C com campos obrigatorios em branco
  Quando o usuario nao preenche os campos obrigatorios da conta
  Entao o usuario deve visualizar a mensagem "Esse campo é obrigatório."
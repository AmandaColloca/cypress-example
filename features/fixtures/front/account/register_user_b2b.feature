#language: pt 
@regression @sanity @register_b2b 
Funcionalidade: Validar a funcionalidade de Cadastro para clientes B2B

  Contexto: Estar na pagina de registro de empresa
    Dado que o usuario visita o site "Carbono"
    E que ele segue para a pagina de registro de uma conta empresa

  @b2b_valid_data
  Cenario: Criar um conta B2B com as dados validos
  Quando o usuario submete dados validos para criar uma conta b2b
  Entao o usuario deve visualizar a mensagem "Obrigado! Estamos revisando a sua solicitação e logo entraremos em contato"

  @b2b_invalid_data
  Cenario: Validar tentativa de criacao de uma conta B2B com dados invalidos
  Quando o usuario submete dados invalidos para criar uma conta b2b
  Entao o usuario deve visualizar a mensagem "CNPJ é inválido."
  E o usuario deve visualizar a mensagem "CPF é inválido."

  @b2b_no_data
  Cenario: Validar tentativa de criacao de uma conta B2B com campos obrigatorios em branco
  Quando o usuario nao preenche os campos obrigatorios da empresa
  Entao o usuario deve visualizar a mensagem "Esse campo é obrigatório."
#language: pt
@regression @sanity
Funcionalidade: Validar acessos na plataforma Carbono

  Contexto: Testar funcionalidade dos formulários de cadastro e login na plataforma Carbono
    Dado que o usuario visita o site "Carbono"

  @login
  Cenario: Teste de acesso de usuário com uma conta existente
    Quando eu acesso uma conta existente
    Entao o usuario deve visualizar a mensagem "Bem-vindo, Teste Robo!"
#language: pt
@regression @braspag @credit @wip
Funcionalidade: Validar compras na plataforma Carbono.
  Contexto: Testar métodos de pagamento na plataforma Carbono.
  
  Dado que visito o site Carbono

  @braspag_creditcard_simple_Guest @simple
  Cenario: Validar compras com produtos simples, com usuário GUEST
    Quando estou fazendo uma compra com produtos simples
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Cartão de Crédito via Braspag"
    Então finalizo meu pedido com sucesso

  @braspag_creditcard_all_Guest @all
  Cenario: Validar compras com produtos variados, com usuário GUEST
    Quando estou fazendo uma compra com produtos variados
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Cartão de Crédito via Braspag"
    Então finalizo meu pedido com sucesso

  @braspag_creditcard_simple_Logged @simple
  Cenario: Validar compras com produtos simples, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos simples
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Cartão de Crédito via Braspag"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta

  @braspag_creditcard_all_Logged @all
  Cenario: Validar compras com produtos variados, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos variados
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Cartão de Crédito via Braspag"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta
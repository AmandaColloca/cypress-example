#language: pt
@regression @braspag @billet @wip
Funcionalidade: Validar compras na plataforma Carbono.
  Contexto: Testar métodos de pagamento na plataforma Carbono.
  
  Dado que visito o site Carbono

  @braspag_billet_simple_G @simple
  Cenario: Validar compras com produtos simples, com usuário GUEST
    Quando estou fazendo uma compra com produtos simples
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Boleto Bancário via Braspag"
    Então finalizo meu pedido com sucesso

  @braspag_billet_all_G @all
  Cenario: Validar compras com produtos variados, com usuário GUEST
    Quando estou fazendo uma compra com produtos variados
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Boleto Bancário via Braspag"
    Então finalizo meu pedido com sucesso

  @braspag_billet_simple_Logged @simple
  Cenario: Validar compras com produtos simples, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos simples
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Boleto Bancário via Braspag"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta

  @braspag_billet_all_Logged @all
  Cenario: Validar compras com produtos variados, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos variados
    E seleciono o método de envio "Fixo"
    E seleciono o método de pagamento "Boleto Bancário via Braspag"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta
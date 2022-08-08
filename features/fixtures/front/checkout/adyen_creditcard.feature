#language: pt
@regression @adyen_credit @wip
Funcionalidade: Validar compras na plataforma Carbono.
  Contexto: Testar métodos de pagamento na plataforma Carbono.
  
  Dado que visito o site Carbono
  
#PENDING

  @adyen_pending
  Cenario: Validar compras com produtos simples, com usuário GUEST
    Quando estou fazendo uma compra com produtos simples
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "PENDING"
    Então finalizo meu pedido com sucesso

  @adyen_all_pending 
  Cenario: Validar compras com produtos variados, com usuário GUEST
    Quando estou fazendo uma compra com produtos variados
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "PENDING"
    Então finalizo meu pedido com sucesso

  @adyen_logged_pending
  Cenario: Validar compras com produtos simples, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos simples
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "PENDING"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta

  @adyen_all_logged_pending
  Cenario: Validar compras com produtos variados, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos variados
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "PENDING"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta

#CANCELLED

  @adyen_cc_cancelled
  Cenario: Validar compras com produtos simples, com usuário GUEST
    Quando estou fazendo uma compra com produtos simples
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "CANCELLED"
    Então verifico mensagem de erro

  @adyen_cancelled_all
  Cenario: Validar compras com produtos variados, com usuário GUEST
    Quando estou fazendo uma compra com produtos variados
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "CANCELLED"
    Então verifico mensagem de erro

  @adyen_cancelled_logged
  Cenario: Validar compras com produtos simples, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos simples
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "CANCELLED"
    Então verifico mensagem de erro

  @adyen_cancelled_all_logged 
  Cenario: Validar compras com produtos variados, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos variados
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "CANCELLED"
    Então verifico mensagem de erro

#APPROVED 

  @adyen_approved
  Cenario: Validar compras com produtos simples, com usuário GUEST
    Quando estou fazendo uma compra com produtos simples
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "APPROVED"
    Então finalizo meu pedido com sucesso

  @adyen_all_approved 
  Cenario: Validar compras com produtos variados, com usuário GUEST
    Quando estou fazendo uma compra com produtos variados
    E preencho minhas informacoes no checkout
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "APPROVED"
    Então finalizo meu pedido com sucesso

  @adyen_logged_approved
  Cenario: Validar compras com produtos simples, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos simples
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "APPROVED"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta

  @adyen_all_logged_approved
  Cenario: Validar compras com produtos variados, com usuário logado
    Quando eu acesso uma conta existente
    E estou fazendo uma compra com produtos variados
    E seleciono o método de envio "Fixo"
    E seleciono o modulo "Adyen" com metodo de pagamento "Cartao de credito"
    E preencho o campo titular do cartão como "APPROVED"
    E finalizo meu pedido com sucesso
    Então verifico se meu pedido foi registrado em minha conta
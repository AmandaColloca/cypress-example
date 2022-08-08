E("preencho minhas informacoes no checkout") do
  @register_b2c.checkout_guest
end

E("seleciono o método de envio {string}") do |option|
  sleep 5

  @shipping.shipping_method(option)
end

Quando("seleciono o modulo {string} com metodo de pagamento {string}") do |option, option2|
  sleep 5

  case option 
  when "Braspag"
    @braspag.payment_method(option2)

  when "Adyen"
    @adyen.payment_method(option2)

  end

end

E("preencho o campo titular do cartão como {string}") do |option|
  @adyen.type_owner(option)
end

E("seleciono o método de pagamento {string}") do |option|
  @braspag.payment_method(option)
end
   
Então("finalizo meu pedido com sucesso") do
  page_message = ("//span[@data-ui-id='page-title-wrapper']")

  @adyen.finish_order
  assert_selector(page_message, wait: 3)
  assert_text("Obrigado por sua compra!", wait: 3)
end

Então("verifico mensagem de erro") do 
  @adyen.finish_order
  @adyen.verific_cancelled
end

Entao("verifico se meu pedido foi registrado em minha conta") do
  text_numero_pedido = find(EL['cart']['text_numero_pedido']).text
  find(EL['cart']['text_numero_pedido']).click

  assert_text(text_numero_pedido)
end
Quando("estou fazendo uma compra com produtos simples") do
  @products.add_simple_product

  find(EL['cart']['icone_carrinho']).click

  sleep 2

  find(EL['cart']['botao_prosseguir_checkout']).click
end

Quando("estou fazendo uma compra com produtos variados") do
  @products.allproducts

  find(EL['cart']['icone_carrinho']).click

  sleep 2
  
  find(EL['cart']['botao_prosseguir_checkout']).click
end
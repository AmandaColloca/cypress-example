Dado('que o usuario visita o site {string}') do |nome_projeto|
  nome_projeto = DATA[nome_projeto]
  visit(nome_projeto)
end

Entao('o usuario deve visualizar a mensagem {string}') do |mensagem|
  assert_text(mensagem)
end

E("eu debugo") do
  binding.pry
end
# frozen_string_literal: true

class Braspag
  include Capybara::DSL

  def credit_form
    find('select_cartao_credito_braspag').click
    digit_by_digit('campo_numero_cartao_braspag', information[:number])
    find('campo_titular_cartao_braspag').set(information[:owner])
    find('campo_validade_mes_braspag').click
    find('campo_validade_ano_braspag').click
    digit_by_digit('campo_codigo_seguranca', information[:campo_codigo_seguranca])
  end

  def payment_method(option)
    case option
    when 'Cartão de Crédito via Braspag'
      credit_form

      sleep 2

      find('botao_finalizar').click
    when 'Boleto Bancário via Braspag'
      find('select_boleto_braspag').click

      sleep 2

      find('botao_finalizar').click
    end
  end

  def digit_by_digit(input, txt)
    txt.chars.each do |c|
      find(input).native.send_keys(c)
    end
  end

  def information
    {
      number: '4024007100309631',
      owner: 'tester accept',
      campo_codigo_seguranca: '123'
    }
  end
end

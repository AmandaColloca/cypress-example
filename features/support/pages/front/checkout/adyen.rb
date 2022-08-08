# frozen_string_literal: true

# Class to deal with Ayden Payment Gateway
class Adyen
  include AutomationCore

  def initialize
    @credicard_data = {
      number: '5555 3412 4444 1115',
      campo_codigo_seguranca: '737',
      expire_date: '03/30'
    }
  end

  def payment_method(option2)
    case option2
    when 'Cartao de credito'
      credit_form
      sleep 2
    end
  end

  def credit_form
    find('select_cartao_credito_adyen').click
    sleep 2
    within('select_cartao') do
      find('option_tipo_cartao_adyen').select_option
    end
    within_frame(find('iframe_numero_cartao_adyen')) { digit_by_digit('campo_numero_cartao_adyen', @credicard_data[:number]) }
    within_frame(find('iframe_validade_cartao_adyen')) { digit_by_digit('campo_validade_cartao_adyen', @credicard_data[:expire_date]) }
    within_frame(find('iframe_codigo_seguranca_adyen')) { digit_by_digit('campo_codigo_seguranca_adyen', @credicard_data[:campo_codigo_seguranca]) }
    sleep 2
  end

  def type_owner(option)
    find('campo_titular_cartao_adyen').set(option)
  end

  def finish_order
    find('botao_finalizar').click
    ajax_waiter
  end

  def digit_by_digit(input, txt)
    txt.chars.each do |c|
      find(input).native.send_keys(c)
    end
  end

  def verific_cancelled
    alert = find('alert_cancelado').text
    puts 'Alert REFUSED' if alert == 'The payment is REFUSED.'
  end
end

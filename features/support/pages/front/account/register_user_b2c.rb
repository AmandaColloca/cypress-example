# frozen_string_literal: true

# Class to deal with b2b user registration
class RegisterUserB2CPage
  include AutomationCore

  def register_account_valid_cpf
    fill_form(commom_b2c_user_data)
    digit_by_digit('campo_cpf', user_data_taxvat[:valid_cpf])
    find('botao_criar_conta').click
  end

  def register_account_invalid_cpf
    fill_form(commom_b2c_user_data)
    digit_by_digit('campo_cpf', user_data_taxvat[:invalid_cpf])
    find('botao_criar_conta').click
  end

  def register_account_valid_cnpj
    fill_form(commom_b2c_user_data)
    find('option_pessoa_juridica').click
    digit_by_digit('campo_cnpj', user_data_taxvat[:valid_cnpj])
    fill_form(b2c_data_company)
    find('botao_criar_conta').click
  end

  def register_account_invalid_cnpj
    fill_form(commom_b2c_user_data)
    find('option_pessoa_juridica').click
    digit_by_digit('campo_cnpj', user_data_taxvat[:invalid_cnpj])
    fill_form(b2c_data_company)
    find('botao_criar_conta').click
  end

  def register_b2c_account_unfilled
    assert_text('Criar Nova Conta de Cliente')
    fill_form(commom_b2c_user_data)
    find('botao_criar_conta').click
  end

  def checkout_guest
    digit_by_digit('campo_email_usuario_visitante', information[:email])
    digit_by_digit('campo_cpf_usuario_visitante', information[:valid_cpf])
    find('campo_nome_usuario_visitante').set(information[:sample_text])
    find('campo_sobrenome_usuario_visitante').set(information[:sample_text])
    digit_by_digit('campo_cep_usuario_visitante', information[:cep])
    digit_by_digit('campo_numero_usuario_visitante', information[:number])
    digit_by_digit('campo_telefone_usuario_visitante', information[:telephone])
  end
end

# frozen_string_literal: true

# Class to deal with b2c user registration
class RegisterUserB2BPage
  include AutomationCore

  def register_account_valid
    fill_form(b2b_company_data)
    digit_by_digit('campo_cnpj_empresa_b2b', user_data_taxvat[:valid_cnpj])
    digit_by_digit('campo_cpf_adm_b2b', user_data_taxvat[:valid_cpf])
    find('checkbox_inscricao_estadual_b2b').click
    find('botao_enviar_b2b').click
  end

  def register_account_invalid
    digit_by_digit('campo_cnpj_empresa_b2b', user_data_taxvat[:invalid_cnpj])
    digit_by_digit('campo_cpf_adm_b2b', user_data_taxvat[:invalid_cpf])
    find('checkbox_inscricao_estadual_b2b').click
    find('botao_enviar_b2b').click
  end

  def register_account_unfilled
    assert_text('Nova Empresa')
    find('botao_enviar_b2b').click
  end
end

# frozen_string_literal: true

# Module to Generate User data for tests
module GenerateUserData
  include RSpec::Matchers
  include Capybara::DSL
  include Cucumber::Glue::ProtoWorld

  def commom_b2c_user_data
    {
      campo_nome: FFaker::NameBR.first_name.capitalize,
      campo_sobrenome: FFaker::NameBR.last_name.capitalize,
      campo_email: "tst_wbjmp#{Faker::Number.number(digits: 9)}@putsbox.com",
      campo_senha: 'Teste123456@',
      campo_confirmacao_senha: 'Teste123456@'
    }
  end

  def user_data_taxvat
    {
      valid_cpf: FFaker::IdentificationBR.cpf,
      invalid_cpf: '000.000.000-00',
      valid_cnpj: FFaker::IdentificationBR.cnpj,
      invalid_cnpj: '00.000.000/0000-00'
    }
  end

  def b2c_data_company
    {
      campo_razao_social: 'Testes Acme LTDA',
      campo_nome_fantasia: FFaker::Company.name,
      campo_inscricao_estadual: FFaker::AddressBR.state_abbr
    }
  end

  def user_address_data
    {
      cep: FFaker::AddressBR.zip_code,
      number: Faker::Number.number(digits: 4),
      telephone: FFaker::PhoneNumberBR.mobile_phone_number
    }
  end

  def b2b_company_data
    {
      campo_cep_b2b: '04543-000',
      campo_nome_empresa_b2b: Faker::Company.name,
      campo_email_empresa_b2b: "tst_wbjmp#{Faker::Number.number(digits: 9)}@putsbox.com",
      campo_razao_social_b2b: 'Teste Empresa LTDA',
      campo_nome_fantasia_b2b: 'Teste Empresa',
      campo_numero_b2b: '50',
      campo_nome_adm_b2b: 'Robô',
      campo_sobrenome_adm_b2b: 'Teste',
      campo_email_adm_b2b: "tst_wbjmp#{Faker::Number.number(digits: 9)}@putsbox.com",
      campo_telefone_b2b: FFaker::PhoneNumberBR.mobile_phone_number
    }
  end
end

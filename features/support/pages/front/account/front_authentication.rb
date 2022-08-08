# frozen_string_literal: true

# Class to deal with Front Authentication
class FrontAuthenticationPage
  include AutomationCore

  def login
    find('campo_login_email').set(DATA["user"]["login"])
    find('campo_login_senha').set(DATA["user"]["pass"])
    ajax_waiter
    find('botao_finalizar_login').click
    ajax_waiter
  end
end

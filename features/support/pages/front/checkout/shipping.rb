# frozen_string_literal: true

class Shipping
  include AutomationCore

  def shipping_method(option)
    find("//td[text()='#{option}']").click

    assert_selector('botao_continue_usuario_visitante')
    find('botao_continue_usuario_visitante').click
  end
end

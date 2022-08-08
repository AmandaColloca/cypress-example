# frozen_string_literal: true

class Products
  include AutomationCore

  def information
    {
      campo_nome_remetente: 'Teste132',
      campo_email_remetente: 'teste132@mailinator.com',
      campo_nome_destinatario: 'Teste132132',
      campo_email_destinatario: 'teste132132@mailinator.com'
    }
  end

  def add_simple_product
    assert_selector('select_produto_simples')
    find('select_produto_simples').click
    wait_to_add
  end

  def virtual
    assert_selector('select_produto_virtual')
    find('select_produto_virtual').click
    wait_to_add
  end

  def virtual_giftcard
    assert_selector('localizar_cartao_presente')
    find('localizar_cartao_presente').click
    first('option_valor').click
    find('campo_nome_remetente').set(information[:campo_nome_remetente])
    find('campo_email_remetente').set(information[:campo_email_remetente])
    find('campo_nome_destinatario').set(information[:campo_nome_destinatario])
    find('campo_email_destinatario').set(information[:campo_email_destinatario])
    wait_to_add
  end

  def configurable
    assert_selector('localizar_produto_configuravel')
    find('localizar_produto_configuravel').click
    find('option_tamanho_produto').click
    wait_to_add
  end

  def grouped
    assert_selector('localizar_produto_agrupado')
    find('localizar_produto_agrupado').click

    (1..3).each do |i|
      find("//input[@name='super_group[#{i}]']").set(1)
    end

    wait_to_add
  end

  def bundle
    assert_selector('localizar_produto_bundler')
    find('localizar_produto_bundler').click
    sleep 1
    find('botao_personalizar').click
    sleep 1
    wait_to_add
  end

  def wait_to_add
    sleep 1
    assert_selector('botao_adicionar_carrinho')
    find('botao_adicionar_carrinho').click
    sleep 1
    find('logo').click
  end

  def allproducts
    virtual
    virtual_giftcard
    configurable
    grouped
    bundle
    add_simple_product
  end
end

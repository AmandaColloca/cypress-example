# Automação Carbono 

## Requisitos:

* Ruby (versão v2.5 ou superior)
* Bundler (Gem)

**Ruby (versão v2.5 ou superior)** - Linguagem a qual utilizaremos para realizar automação Web.  
https://github.com/ruby/ruby  

**Bundler** - Gem para instalar, listar e gerenciar as depêndencias do projeto atual.  
https://github.com/bundler/bundler  

## Principais depêndencias utilizadas:

* Capybara (Gem)
* Cucumber (Gem)

**Capybara** - Gem para efetuar as interações com os navegadores.  
https://github.com/teamcapybara/capybara  

**Cucumber** - Gem para a organização e execução dos casos de testes (Além das configurações referentes ao ambiente).  
https://github.com/cucumber/cucumber  

**YAML** - Módulo para criar properties, mapear elementos e outros (Facilita a leitura)  
http://ruby-doc.org/stdlib-2.4.0/libdoc/yaml/rdoc/YAML.html  

## Instalar as dependências:

* Após configuar o ambiente local com o a versão do Ruby e gerenciadores, instale as depedências do projeto (Gems), que estão no arquivo Gemfile (preferencialmente ele deve estar com as versões da bibliotecas, uma vez que foram testadas, para garantir que num ambiente com as mesmas condições, a automação seja executadas sem erros )
* Executar o seguinte comando:
    * ``bundle install'``
* Cada vez que uma Gem for inserida ou atualizada, será necessário rodar esse comando, para que as depedências sejam instaladas corretamente. Fiquem atentos a alterações no arquivo Gemfile.


## Dentro de cada pasta do projeto, teremos um arquivo README.md, com a documentação referente ao que esta sendo feito em cada diretório, como por exemplo:

* Tipos de validações
* Configurações de Ambientes
* Arquivos de dados
* Chamadas utilizadas nos casos de testes
* Classes facilitadoras utilizadas em nossos scripts

[![](http://i.imgur.com/UnxKMkE.png "source: imgur.com")](http://imgur.com/UnxKMkE) 

**Obs: Para rodar os testes "Sanity/Smoke" ou Regressão localmente (executar na branch "Development" - CLI no diretorio raiz do projeto) - Exemplos de comandos:** 

* Staging (sem report): 
    * ``cucumber -p qa_local -t "@sanity and not @wip"``
* Staging Headless (com report): 
    * ``cucumber -p qa_headless_report "@sanity and not @wip"``

* Verificar os outros perfis possíveis "-p" no arquivo cucumber.yml - as tags "-t" estão espeficificas nos próprios cenários.

## Guia para instalação do Cucumber Reports:

* A partir da versão 5.1.1 do Cucumber, é possível utilizar o "Service Reports", onde os relatórios ficam armazenados na conta do mantenedor da automação (no caso de mais de um colaborador, manter em uma conta apenas, como padrão);
* Crie sua conta nesse link: (https://reports.cucumber.io/);
* Após criar a conta, crie uma "Collection" com o nome do Projeto. A "Collection" será onde os relatórios gerados ficarão armazendos, por isso é importante manter o mesmo nome do projeto, para fácil identificação (assim como o nome do automação);
* Acesse a página da "Collection" e copie o Token gerado. Ex: CUCUMBER_PUBLISH_TOKEN=token_com_bastante_números
    * O Token será utilizado para identificar para qual "Collection" será enviado o relatório gerado após os testes;
    * Ele pode ser aplicado no arquivo cucumber.yml ``<%ENV['CUCUMBER_PUBLISH_TOKEN']='token'%>``, para que não seja necessário aplicar a cada comando de execução do Cucumber o Token da "Collection" (sem especificar esse Token, o relatório é gerado numa URL que será deletado após 24hs).
    * Pode ser criado um .env, especificado o Token. Também é possível fazer um export no ambiente local para que o token não fique explícito no código, mas nesse caso só é possível manter uma "Collection" por ambiente. Para mais de um projeto localmente, utilizar a opção do .env é mais adequada.
* No arquivo cucumber.yml já estão especificados as variáveis de ambiente e chamadas para enviar o relatório com screenshots. Para entender os detalhes, verifique a documentação do Cucumber nestes links: (https://cucumber.io/blog/open-source/cucumber-reports/) e (https://cucumber.io/docs/cucumber/reporting/)
* Ao final da execução de uma suíte de testes, é exibido no terminal um link para acesso do relatório, que é pode ser compartilhado publicamente, mesmo tendo sido executado localmente. 


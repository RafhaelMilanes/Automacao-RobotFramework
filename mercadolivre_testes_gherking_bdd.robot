*** Settings ***
Documentation    Essa suíte testa o site do mercadolivre.com.br
Resource         mercadolivre_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Ofertas"
    [Documentation]    Esse teste verifica o menu OFERTAS do site MERCADOLIVRE.COM.BR
    ...                e verifica a categoria ofertas
    [Tags]             menus    categorias
    Dado que estou na home page da mecadolivre.com.br
    Quando acessar o menu "Ofertas"
    Então o título da página deve ficar "Ofertas do dia | Mercadolivre Brasil"
    E o texto "Ofertas do dia" deve ser exibido na página
    E a categoria "Ofertas relâmpago" deve ser exibida na página

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca

    Dado que estou na home page da mecadolivre.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Xbox Series S | MercadoLivre 📦"
    E um produto da linha "Xbox Series S" deve ser mostrado na página



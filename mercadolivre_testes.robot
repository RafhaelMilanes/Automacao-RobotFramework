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
    
    Acessar a home page do site mercadolivre.com.br
    Entrar no menu "Ofertas"
    Verificar se aparece a frase "Ofertas do dia"
    Verificar se o título da página fica "Ofertas do dia | Mercadolivre Brasil"
    Verificar se aparece a categoria "Ofertas relâmpago"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    
    Acessar a home page do site mercadolivre.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto pesquisado

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                         https://www.mercadolivre.com.br/
${MENU_OFERTAS}                //a[contains(.,'Ofertas')]
${TEXTO_HEADER_ELETRONICOS}    Ofertas do dia
${HEADER_ELETRONICOS}          //h1[@class='header_title'][contains(.,'Ofertas do dia')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site mercadolivre.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_OFERTAS} 

Entrar no menu "Ofertas"
    Click Element    locator=${MENU_OFERTAS} 

Verificar se aparece a frase "Ofertas do dia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITLE}"
    Title Should Be    title=${TITLE}

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible    locator=//p[@class='title'][contains(.,'${CATEGORIA}')]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=//input[contains(@type,'text')]    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=//div[contains(@role,'img')]

Verificar o resultado da pesquisa, se está listando o produto pesquisado
    Wait Until Page Contains Element    locator=(//h2[@aria-level='3'][contains(.,'Microsoft Xbox Series S 512gb Standard Cor Branco')])[1]


# GHERKING STEPS

Dado que estou na home page da mecadolivre.com.br
    Acessar a home page do site mercadolivre.com.br

Quando acessar o menu "Ofertas"
    Entrar no menu "Ofertas"

Então o título da página deve ficar "Ofertas do dia | Mercadolivre Brasil"
    Verificar se o título da página fica "Ofertas do dia | Mercadolivre Brasil"

E o texto "Ofertas do dia" deve ser exibido na página
    Verificar se aparece a frase "Ofertas do dia"

E a categoria "Ofertas relâmpago" deve ser exibida na página
    Verificar se aparece a categoria "Ofertas relâmpago"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Xbox Series S | MercadoLivre 📦"
    Title Should Be    title=Xbox Series S | MercadoLivre 📦
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, se está listando o produto pesquisado
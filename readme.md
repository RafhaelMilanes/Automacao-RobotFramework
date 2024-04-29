# Testes Automatizados para Mercado Livre

Este repositório contém testes automatizados codigos em Robot Framework para verificar o funcionamento do site do Mercado Livre (https://www.mercadolivre.com.br/). Os testes são realizados utilizando a biblioteca SeleniumLibrary.

## Casos de Teste

### Caso de Teste 01 - Acesso ao menu "Ofertas"

- Verifica o menu "Ofertas" e a categoria "Ofertas relâmpago".

### Caso de Teste 02 - Pesquisa de um Produto

- Verifica a busca de um produto específico.

## Como Executar os Testes

1. Clone o repositório.
2. Certifique-se de ter o Robot Framework e o SeleniumLibrary instalados.<br><br>
   `pip install robotframework`<br>
   `pip install --upgrade robotframework-seleniumlibrary`<br><br>
3. Execute os testes com o comando: <br><br>
   `robot -d resultado_do_teste .\mercadolivre_testes.robot`

## Arquivos Principais

- **mercadolivre_testes.robot:** Contém os casos de teste e as keywords.
- **mercadolivre_resources.robot:** Recursos utilizados nos testes.

## Configurações e Variáveis

- **Settings:** Configurações gerais para os testes.
- **Variables:** Declaração de variáveis utilizadas nos testes.


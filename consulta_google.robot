*** Settings ***
Documentation    Testes de consulta no buscador Google
...              Abre o navegador Chrome
...              E realiza a consulta.

Library  SeleniumLibrary

*** Test Cases ***
Consulta Google
    [Tags]    smoketest
    Acessar o Chrome na pagina <https://www.google.com.br>
    Digitar na pesquisa "Ovos de Páscoa"
    Validar que aparece no titulo da guia o resultado esperado
    Fechar o browser

*** Keywords ***
Acessar o ${browser} na pagina <${url}>
    open browser    ${url}      ${browser}

Digitar na pesquisa ${palavra_chave}
    Set Test Variable  ${palavra_chave}
    input text      name=q      ${palavra_chave}
    press keys      name=q      ENTER

Validar que aparece no titulo da guia o resultado esperado
    ${titulo} = get title
    should contain  ${titulo}       ${palavra_chave}

Fechar o ${browser}
    close browsers
*** Settings ***
Documentation    Testes de consulta no buscador Google
...              Abre o navegador Chrome
...              E realiza a consulta.

Library  SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test
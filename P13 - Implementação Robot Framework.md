# Pergunta 13 — Implementação — Script Robot Framework — Teste 2

```robot
*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${URL_LOGIN}           http://localhost:3000/login
${BROWSER}             chrome
${BOTAO_ENTRAR}        id=btn-login

*** Test Cases ***
CT02 - Deve verificar se o botao Entrar esta presente na tela
    Dado que o usuário carrega a página de login
    Então o botão de login deve estar visível na interface

*** Keywords ***
Dado que o usuário carrega a página de login
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window
Então o botão de login deve estar visível na interface
    Page Should Contain Element    ${BOTAO_ENTRAR}
```

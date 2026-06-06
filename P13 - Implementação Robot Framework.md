# Pergunta 13 — Implementação — Script Robot Framework — Teste 2

```robot
*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${URL_LOGIN}       http://localhost:5173/login
${BROWSER}         chrome
${BOTAO_ENTRAR}    css=button[type='submit']

*** Test Cases ***
CT02 - Deve verificar se o botao Entrar esta presente na tela
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    ${BOTAO_ENTRAR}
```

# Pergunta 10 — Implementação — Script Robot Framework — Teste 1

```robot
*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${URL_LOGIN}           http://localhost:3000/login
${BROWSER}             chrome
${TITULO_ESPERADO}     Daily Check-in Sênior - Login

*** Test Cases ***
CT01 - Deve verificar o titulo da pagina de login
    Dado que o usuário acessa a página de login
    Então a aba do navegador deve exibir o título correto

*** Keywords ***
Dado que o usuário acessa a página de login
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window
Então a aba do navegador deve exibir o título correto
    Title Should Be    ${TITULO_ESPERADO}
```

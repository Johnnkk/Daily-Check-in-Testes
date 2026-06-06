# Pergunta 10 — Implementação — Script Robot Framework — Teste 1

```robot
*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${URL_LOGIN}          http://localhost:5173/login
${BROWSER}            chrome
${TITULO_ESPERADO}    Daily Check-in Sênior

*** Test Cases ***
CT01 - Deve verificar o titulo da pagina de login
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${TITULO_ESPERADO}
```

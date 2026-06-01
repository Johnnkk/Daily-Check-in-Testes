*** Settings ***
Library    SeleniumLibrary

Suite Setup       Dado que o usuário acessa a tela de login
Suite Teardown    E fecha o navegador

*** Variables ***
${URL}                 http://localhost:3000/login
${BROWSER}             chrome

${INPUT_EMAIL}         id=email
${INPUT_SENHA}         id=password
${BOTAO_ENTRAR}        id=btnLogin
${MENSAGEM_ERRO}       id=erroGeral

*** Test Cases ***
CT01 - Deve bloquear login com email não cadastrado
    Dado que o usuário informa o email    naoexiste@email.com
    E informa a senha    SenhaSegura123
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem de erro    Usuário não encontrado

CT02 - Deve validar campos obrigatórios vazios
    Dado que o usuário informa o email    ${EMPTY}
    E informa a senha    ${EMPTY}
    Quando solicitar o login
    Então o sistema deve apresentar a mensagem de erro    Preencha todos os campos

*** Keywords ***
Dado que o usuário acessa a tela de login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Dado que o usuário informa o email
    [Arguments]    ${email}
    Input Text    ${INPUT_EMAIL}    ${email}

E informa a senha
    [Arguments]    ${senha}
    Input Password    ${INPUT_SENHA}    ${senha}

Quando solicitar o login
    Click Button    ${BOTAO_ENTRAR}

Então o sistema deve apresentar a mensagem de erro
    [Arguments]    ${mensagem}
    Wait Until Element Is Visible    ${MENSAGEM_ERRO}    timeout=5s
    Element Text Should Be    ${MENSAGEM_ERRO}    ${mensagem}

E fecha o navegador
    Close Browser

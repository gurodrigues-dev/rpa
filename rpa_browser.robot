*** Comments ***
Resource    robot_test_resource.robot
Test Setup    Abrir o navegador


*** Settings ***
Library     Browser


*** Test Cases ***
Teste de Caso 1
    [Documentation]    abrir a pagina
    [Tags]    menu    nike
    Entrar no site da Nike
    Clicar no campo de masculino
    Clicar no campo de busca
    Escrever chuteira
    Clicar na chuteira tamanho um


*** Keywords ***
Abrir o navegador
    Open Browser

Entrar no site da Nike
    New Page    https://www.nike.com.br/

Clicar no campo de masculino
    Click    //*[@id="navigationHeader"]/div/div[2]/div/div[2]/div/div[2]/nav/li[4]/a

Clicar no campo de busca
    Click    //*[@id="navigationHeader"]/div/div[2]/div/div[2]/div/div[3]/div/form/input

Escrever chuteira
    Keyboard Input    insertText    Chuteira
    Sleep    5
    Keyboard Key    press    Enter
    Sleep    10

Fechar página
    Close Page

Clicar na chuteira tamanho um
    Click    //*[@id="__next"]/div[2]/div[2]/div/div/div[1]/div[3]/div[2]/div[1]/div[1]/a/span/img
    Sleep    5

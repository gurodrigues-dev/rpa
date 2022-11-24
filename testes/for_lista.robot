*** Settings ***
Library     Browser
Library     RPA.Desktop    WITH NAME    desktop
Library     RPA.Windows    WITH NAME    windows


*** Variables ***
${TIMEOUT}      300
@{LISTA}        1    2    3


*** Test Cases ***
For dentro de dicionarios
    Loop Test


*** Keywords ***
Loop Test
    FOR    ${item}    IN    @{LISTA}
        Log To Console    ${item}
    END

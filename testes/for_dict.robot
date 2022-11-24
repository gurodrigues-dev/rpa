*** Settings ***
Library     Browser
Library     RPA.Desktop    WITH NAME    desktop
Library     RPA.Windows    WITH NAME    windows


*** Variables ***
${TIMEOUT}      300
&{NAMES}        TESTE1=1    TESTE2=2    TESTE3=3
@{LISTA}        &{NAMES}


*** Test Cases ***
Loop Dict Test
    Test For


*** Keywords ***
Test For
    FOR    ${ITEM}    IN    @{LISTA}
        Log    ${ITEM}
    END

*** Settings ***
Resource                ../resources/importer.robot

*** Keywords ***
Login User
    [Arguments]                    ${email}=${email}             ${password}=${password}
    Click Login Dropdown
    Click Login Link
    Input Email                    ${email}
    Input Password                 ${password}
    Click Submit Login
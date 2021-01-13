*** Settings ***
Resource            ../resources/importer.robot

*** Keywords ***
Input Username and Password
    [Arguments]                 ${username}             ${password}
    Input Text                  ${placeholder_sign_name}                    ${username}
    Input Text                  ${placeholder_sign_pwd}                     ${password}

Click Masuk Button
    Wait Until Element Is Visible               ${masuk_btn}
    Click Element                               ${masuk_btn}
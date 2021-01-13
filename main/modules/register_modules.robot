*** Settings ***
Resource                         ../resources/importer.robot

*** Keywords ***
Register New Account
    [Arguments]                 ${first_name}               ${last_name}
    ...                         ${email}                    ${hp}
    ...                         ${password}                 ${confirm_password}
    ...                         ${address}
    Click Register Page
    Input First Name            ${first_name}
    Input Last Name             ${last_name}
    Input Email                 ${email}
    Input Handphone Number          ${hp}
    Input Password              ${password}
    Input Confirm Password      ${confirm_password}
    Input Address               ${address}
    Choose City
    Choose Criticism
    Choose Area
    Click Daftar Button
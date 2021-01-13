*** Keywords ***

Click Register Page
    Wait Until Element Is Visible                   ${daftar_button}
    Click Element                                   ${daftar_button}

Input First Name
    [Arguments]                     ${name}
    Input Text                      ${first_name_placeholder}
    ...                             ${name}

Input Last Name
    [Arguments]                     ${last_name}
    Input Text                      ${last_name_placeholder}
    ...                             ${last_name}

Input Email
    [Arguments]                     ${email}
    Input Text                      ${email_placeholder}
    ...                             ${email}

Input Handphone Number
    [Arguments]                     ${handphone}
    Input Text                      ${hp_placeholder}
    ...                             ${handphone}

Input Password
    [Arguments]                     ${password}
    Input Text                      ${password_reg}
    ...                             ${password}

Input Confirm Password
    [Arguments]                     ${confirm_pass}
    Input Text                      ${con_password_reg}
    ...                             ${confirm_pass}

Input Address
    [Arguments]                     ${address}
    Input Text                      ${address_reg}
    ...                             ${address}

Choose City
    Set Selenium Speed                              0.5
    Wait Until Element Is Visible                   ${city_dropdown}
    Click Element                                   ${city_dropdown}
    Click Element                                   ${city_choosed}

Choose Criticism
    Set Selenium Speed                              0.5
    Wait Until Element Is Visible                   ${criticism_dropdown}
    Click Element                                   ${criticism_dropdown}
    Click Element                                   ${criticism_choosed}

Choose Area
    Set Selenium Speed                              0.5
    Wait Until Element Is Visible                   ${area_dropdown}
    Click Element                                   ${area_dropdown}
    Click Element                                   ${area_choosed}

Input Postal Code
    [Arguments]                     ${postcode}
    Input Text                      ${zipcode_placeholder}
    ...                             ${postcode}

Click Daftar Button
    Wait Until Element Is Visible           ${daftar_btn}
    Click Element                           ${daftar_btn}

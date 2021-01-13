*** Keywords ***

Open Verification
    [Arguments]         ${email}
    Go To               https://mitra.shipper.id/#/bos/login?email=${email}

Input Registered Password
    [Arguments]         ${pwd}
    Input Text          ${password_confirm}
    ...                 ${pwd}
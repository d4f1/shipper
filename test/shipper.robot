*** Settings ***
Suite Setup             Run Keywords
...                     Generate First Name         AND
...                     Generate Last Name          AND
...                     Generate Fake Email         AND
...                     Generate Street Name        AND
...                     Generate Phone Number       AND
...                     Generate Zip Code
Test Setup              Open web application                ${base_url}
Test Teardown           Stop web apps
Resource                ../main/resources/importer.robot

*** Test Cases ***
Register User
    Given Register New Account                  ${first_name}
    ...                                         ${last_name}
    ...                                         ${email}
    ...                                         ${number}
    ...                                         ${available_pwd}
    ...                                         ${available_pwd}
    ...                                         ${street}
    Then Shown Success Allert

Verification Email
    Given Open Verification                     ${email}
    And Input Registered Password               ${available_pwd}
    And Click Masuk Button

Login User
    Given Input Username and Password           ${email}              ${available_pwd}
    And Click Masuk Button
    Then Shown Error Allert


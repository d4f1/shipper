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
    ...                                         testing
    ...                                         testing
    ...                                         ${street}
    ...                                         ${zipcode}



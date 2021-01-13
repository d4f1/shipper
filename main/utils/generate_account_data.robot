*** Settings ***
Resource                         ../resources/importer.robot

*** Keywords ***
Generate Random Notes
    ${notes}=                   FakerLibrary.Paragraph              nb_sentences=3
    Set Global Variable         ${notes}

Generate First Name
    ${first_name}=              Fakerlibrary.First Name
    Set Global Variable         ${first_name}

Generate Last Name
    ${last_name}=                Fakerlibrary.Last Name
    Set Global Variable         ${last_name}

Generate Street Name
    ${street}=                  Fakerlibrary.Street Address
    Set Global Variable         ${street}

Generate Phone Number
    ${accountnumber}=           Fakerlibrary.Random Number              digits=7           fix_len=True
    ${number}                   Set Variable            0857${accountnumber}
    Set Global Variable         ${number}

Generate Fake Email
    ${email}                    Set Variable            ${first_name}@gmail.com
    Set Global Variable         ${email}

Generate Zip Code
    ${zipcode}                  Fakerlibrary.Zipcode
    Set Global Variable         ${zipcode}

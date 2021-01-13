*** Settings ***
Resource                         ../resources/importer.robot

*** Keywords ***
Get Time I Hours Later
    ${1_hours_later}=            Get Current Date            local
    ...                          + 1 hours
    ...                          result_format=timestamp
    ...                          exclude_millis=True
    Set Global Variable          ${1_hours_later}

Get Current Day
    ${curr_day}                 Get Current Date            local
    ...                         result_format=%d
    Set Global Variable         ${curr_day}

Get 2 Days Later
    ${2_days_later}              Get Current Date            local
    ...                         + 48 hours
    ...                         result_format=%d
    Set Global Variable         ${2_days_later}



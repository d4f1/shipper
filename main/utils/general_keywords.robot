*** Keywords ***

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position    ${locator}
    ${y}=        Get Vertical Position      ${locator}
    Execute Javascript      window.scrollTo(${x}, ${y})

Confirm Action OK
    Execute Javascript      Execute Javascript window.alert('Are you sure you want to pay at arrival?').click()
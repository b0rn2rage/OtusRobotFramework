*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ACCOUNT_LOGIN_CONTAINER}  id:account-login
${LOGIN}     css:input[value='Login']
${ACCOUNT_PAGE_CONTAINER}   id:account-account
*** Keywords ***
Waiting login page load
    Wait Until Element is Visible   ${ACCOUNT_LOGIN_CONTAINER}
Click login
    Click Element   ${LOGIN}
Waiting account page load
    Wait Until Element is Visible   ${ACCOUNT_PAGE_CONTAINER}

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ACCOUNT_LOGOUT_CONTAINER}  id:common-success
${MESSAGE_ABOUT_SUCCESS_LOGOUT}     xpath://h1[contains(text(), 'Account Logout')]
*** Keywords ***
Waiting logout page load
    Wait Until Element is Visible   ${ACCOUNT_LOGOUT_CONTAINER}
Message about success logout
    Wait Until Element is Visible   ${MESSAGE_ABOUT_SUCCESS_LOGOUT}
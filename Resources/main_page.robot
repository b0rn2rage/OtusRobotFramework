*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MAIN_PAGE}  https://demo.opencart.com/
${BROWSER}  chrome
${MAIN_PAGE_CONTAINER}  id:common-home
${MY_ACCOUNTS_DROPDOWN}   class:caret
${REGISTER_BUTTON}   xpath://a[contains(text(),'Register')]
${LOGIN_BUTTON}   xpath://a[contains(text(),'Login')]
${LOGOUT_BUTTON}   xpath://a[contains(text(),'Logout')]
${WISHLIST}     css:.fa.fa-heart

*** Keywords ***
Opening the main page
    Open Browser    ${MAIN_PAGE}    ${BROWSER}
Waiting main page load
    Wait Until Element is Visible   ${MAIN_PAGE_CONTAINER}
Click on my accounts dropdown
    Click Element   ${MY_ACCOUNTS_DROPDOWN}
Waiting register button is visible
     Wait Until Element is Visible  ${REGISTER_BUTTON}
Click register button
    Click Element   ${REGISTER_BUTTON}
Waiting login button is visible
    Wait Until Element is Visible   ${LOGIN_BUTTON}
Click login button
    Click Element   ${LOGIN_BUTTON}
Waiting logout button is visible
    Wait Until Element is Visible   ${LOGOUT_BUTTON}
Click logout button
    Click Element   ${LOGOUT_BUTTON}
Click wishlist
    Click Element   ${WISHLIST}

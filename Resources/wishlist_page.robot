*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${WISHLIST_CONTAINER}    id:account-wishlist
${EMPTY_WISHLIST}   xpath://p[contains(text(),'Your wish list is empty.')]
*** Keywords ***
Waiting wishlist page load
    Wait Until Element is Visible   ${WISHLIST_CONTAINER}
Check wishlist
    Wait Until Element is Visible   ${WISHLIST_CONTAINER}

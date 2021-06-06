*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${DESKTOPS_SECTION}     xpath://a[contains(text(), 'Desktops')]
${DESKTOPS-MAC}     xpath://ul[contains(@class, 'list-unstyled')] /li /a[contains(text(), 'Mac')]
*** Keywords ***
Click Desktops section
    Click Element   ${DESKTOPS_SECTION}
Click Desktops-mac
    Click Element   ${DESKTOPS-MAC}

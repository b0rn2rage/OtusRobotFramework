*** Settings ***
Resource    ../Resources/main_page.robot
Resource    ../Resources/register_new_acc_page.robot
Resource    ../Resources/login_in_acc_page.robot
Resource    ../Resources/logout_from_acc_page.robot
Resource    ../Resources/opencart_header.robot
Resource    ../Resources/product_page.robot
Resource    ../Resources/wishlist_page.robot
Test Setup  Opening the main page
Test Teardown   Close Browser

*** Variables ***
${FIRST_NAME}   Jonh
${LAST_NAME}    Snow
${EMAIL}    north@gmail.com
${TELEPHONE}    +79666666666
${PASSWORD}     iamnotb4starD

*** Test Cases ***
Registering a new account
    Waiting main page load
    Click on my accounts dropdown
    Waiting register button is visible
    Click register button
    Waiting account register page load
    Click and input firstname   ${FIRST_NAME}
    Click and input lastname    ${LAST_NAME}
    Click and input email   ${EMAIL}
    Click and input telephone   ${TELEPHONE}
    Click and input password    ${PASSWORD}
    Click and input confirm password    ${PASSWORD}
    Click checkbox privacy policy
    Click contninue button
    Message about successful registration

Login
    Waiting main page load
    Click on my accounts dropdown
    Waiting login button is visible
    Click login button
    Waiting login page load
    Click and input email   ${EMAIL}
    Click and input password    ${PASSWORD}
    Click login
    Waiting account page load

Logout
    Waiting main page load
    Click on my accounts dropdown
    Waiting login button is visible
    Click login button
    Waiting login page load
    Click and input email   ${EMAIL}
    Click and input password    ${PASSWORD}
    Click login
    Waiting account page load
    Click on my accounts dropdown
    Waiting logout button is visible
    Click logout button
    Waiting logout page load
    Message about success logout

Add to cart
    Waiting main page load
    Click on my accounts dropdown
    Waiting login button is visible
    Click login button
    Waiting login page load
    Click and input email   ${EMAIL}
    Click and input password    ${PASSWORD}
    Click login
    Waiting account page load
    Click Desktops section
    Click Desktops-mac
    Waiting product page load
    Add item to shopping cart
    Alert about success added

Check wishlist
    Waiting main page load
    Click on my accounts dropdown
    Waiting login button is visible
    Click login button
    Waiting login page load
    Click and input email   ${EMAIL}
    Click and input password    ${PASSWORD}
    Click login
    Waiting account page load
    Click wishlist
    Waiting wishlist page load
    Check wishlist

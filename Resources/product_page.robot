*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${PRODUCT_CONTAINER}    id:product-category
${ADD_ITEM_TO_SHOPPING_CART}    css:div.button-group .fa.fa-shopping-cart
${SUCCESS_ALERT}    css:.alert.alert-success
*** Keywords ***
Waiting product page load
    Wait Until Element is Visible   ${PRODUCT_CONTAINER}
Add item to shopping cart
    Click Element   ${ADD_ITEM_TO_SHOPPING_CART}
Alert about success added
    Wait Until Element is Visible   ${SUCCESS_ALERT}

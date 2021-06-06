*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ACCOUNT_REGISTER_CONTAINER}   id:account-register
${INPUT_FIRST_NAME}     id:input-firstname
${INPUT_LAST_NAME}      id:input-lastname
${INPUT_EMAIL}  id:input-email
${INPUT_TELEPHONE}  id:input-telephone
${INPUT_PASSWORD}   id:input-password
${INPUT_CONFIRM_PASSWORD}   id:input-confirm
${PRIVACY_POLICY_CHECKBOX}  css:[name='agree']
${CONTINUE_BUTTON}  css:[value='Continue']
${MESSAGE_ABOUT_SUCCESSFUL_REGISTRATION}    xpath://h1[contains(text(), 'Your Account Has Been Created!')]

*** Keywords ***
Waiting account register page load
    Wait Until Element is Visible   ${ACCOUNT_REGISTER_CONTAINER}
Click and input firstname
    [Arguments]     ${first_name}
    Input Text  ${INPUT_FIRST_NAME}     ${first_name}
Click and input lastname
    [Arguments]     ${last_name}
    Input Text  ${INPUT_LAST_NAME}      ${last_name}
Click and input email
    [Arguments]     ${email}
    Input Text  ${INPUT_EMAIL}      ${email}
Click and input telephone
    [Arguments]     ${telephone}
    Input Text  ${INPUT_TELEPHONE}  ${telephone}
Click and input password
    [Arguments]     ${password}
    Input Text  ${INPUT_PASSWORD}   ${password}
Click and input confirm password
    [Arguments]     ${password}
    Input Text  ${INPUT_CONFIRM_PASSWORD}   ${password}
Click checkbox privacy policy
    Click Element   ${PRIVACY_POLICY_CHECKBOX}
Click contninue button
    Click Element   ${CONTINUE_BUTTON}
Message about successful registration
    Wait Until Element is Visible   ${MESSAGE_ABOUT_SUCCESSFUL_REGISTRATION}
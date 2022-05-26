*** Settings ***
Library       SeleniumLibrary   run_on_failure=Nothing
Resource      variables_002.robot

*** Test Cases ***
Pre-conditions
    Open Browser   ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed   0.5s

Validation Test With Correct Credentials
    loginToApplication

Post-conditions
    Capture Page Screenshot  loginScreenshot.png
    Delete All Cookies
    Close Browser

*** Keywords ***
loginToApplication
    Click Link          (//A[@href='http://uiautomation.domain.local/my-account/'][text()='Account'])[1]
    Input Text      ${usernameElement}    ${username}
    Input Text      ${emailElement}    ${inputEmail}
    Input Text      ${passwordElement}    ${inputPassword}
    Click Button    //button[contains(text(),'Register')]
    Sleep    1s

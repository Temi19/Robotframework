*** Settings ***
Library   SeleniumLibrary   run_on_failure=Nothing
Resource  variables_001.robot

*** Test Cases ***
Pre-conditions
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed   0.5s

Test The Main Page Of Store
    clickOnMainpageIcon

Post-conditions
    Delete All Cookies
    Close Browser

*** Keywords ***
clickOnMainpageIcon
    Page Should Contain Image    (//IMG[@width='1174'])[1]
    Sleep    1s
    Click Image    (//IMG[@width='1174'])[1]
    
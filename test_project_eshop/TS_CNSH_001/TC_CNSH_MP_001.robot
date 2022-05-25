*** Settings ***
Library   SeleniumLibrary   run_on_failure=Nothing
Resource  variables_001.robot

*** Test Cases ***
Pre-conditions
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed   0.5s

Test The Top Part Of The Web Site
    

Post-conditions
    Delete All Cookies
    Close Browser

*** Keywords ***
clickOnStoreButton
    Click Link    (//A[@href='http://uiautomation.domain.local/store/'][text()='Store'])[1]
    Sleep    5s
    

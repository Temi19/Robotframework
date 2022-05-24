*** Settings ***
Library   SeleniumLibrary   run_on_failure=Nothing

*** Variables ***
${browserChrome}  Chrome
${url}  http://uiautomation.domain.local/

*** Test Cases ***
TC_001 - Otevři browser chrome a jdi na adresu
    Set Selenium Speed   0.5s
    
    Open Browser  ${URL}  ${browserChrome}
    Maximize Browser Window

Post-conditions
    Delete All Cookies
    Close All Browsers
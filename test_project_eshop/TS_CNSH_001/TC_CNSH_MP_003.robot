*** Settings ***
Library   SeleniumLibrary   run_on_failure=Nothing
Resource  variables_001.robot

*** Test Cases ***
Pre-conditions
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed   0.5s

Test The Main Page Of Store
    hoverMouseOnTheBucketIcon

Post-conditions
    Delete All Cookies
    Close Browser

*** Keywords ***
hoverMouseOnTheBucketIcon
    Page Should Contain Element    ${bucketLogo}
    Sleep    1s
    
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.hackerrank.com/auth/login
${BROWSER}       Chrome
${USERNAME}      sonali.pramanik@tcs.com
${PASSWORD}      0705@Khushi

*** Test Cases ***
Login to HackerRank
    [Documentation]    Automates HackerRank login and performs basic operations.
    ${CHROME_OPTIONS}=    Set Chrome Options
    Create WebDriver    ${BROWSER}    options=${CHROME_OPTIONS}
    Go To    ${URL}
    Maximize Browser Window
    Input Text         name=username   ${USERNAME}
    Input Text         name=password   ${PASSWORD}
    Click Button       xpath=//button[@type='submit']
    Close Browser

*** Keywords ***
Set Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys, selenium.webdriver.chrome.options
    Call Method    ${options}    add_argument    '--headless'
    Call Method    ${options}    add_argument    '--disable-gpu'
    Call Method    ${options}    add_argument    '--no-sandbox'
    Call Method    ${options}    add_argument    '--disable-dev-shm-usage'
    RETURN    ${options}

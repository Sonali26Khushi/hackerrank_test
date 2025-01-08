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
    Open Browser       ${URL}   ${BROWSER}   chrome_options=${CHROME_OPTIONS}
    Maximize Browser Window
    Input Text         name=username   ${USERNAME}
    Input Text         name=password   ${PASSWORD}
    Click Button       xpath=//button[@type='submit']
    Close Browser
 
*** Keywords ***
Set Chrome Options
    # Create a dictionary for the Chrome options
    ${options}=    Create Dictionary    args=('--headless', '--disable-gpu', '--no-sandbox', '--disable-dev-shm-usage')
    RETURN    ${options}
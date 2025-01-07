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
    Open Browser       ${URL}   ${BROWSER}
    Maximize Browser Window
    Input Text         name=username   ${USERNAME}
    Input Text         name=password   ${PASSWORD}
    Click Button       xpath=//button[@type='submit']
    Close Browser

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.hackerrank.com/auth/login
${BROWSER}       Chrome
${USERNAME}      sonali.pramanik@tcs.com
${PASSWORD}      0705@Khushi
${CHROME_PATH}   /usr/bin/google-chrome
  # Specify path if necessary

*** Test Cases ***
Login to hackerrank
    [Documentation]    Automates hackerrank login and performs basic operations
    Open Browser       ${URL}   ${BROWSER}    chrome_binary=${CHROME_PATH}

    Maximize Browser Window

    Input Text        name=username      ${USERNAME}
    Input Text        name=password       ${PASSWORD}
    Click Button      xpath=/html/body/div[4]/div/div/div/div[2]/div[2]/div/div/div/div/div[1]/div/form/div[3]/button
    Wait Until Page Contains  "Dashboard"   timeout=10sec

    CLick ELement    xpath=/html/body/div[4]/div/div/div/div/div[3]/div/section[3]/div[2]/div/div/ul/li[8]/a/div
    Wait Until Page Contains  "Python"    timeout=10sec

        
    Close Browser
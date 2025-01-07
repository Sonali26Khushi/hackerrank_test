*** Settings ***
Library    SeleniumLibrary
Library    Process  # Import the Process library

*** Variables ***
${URL}           https://www.hackerrank.com/auth/login
${BROWSER}       Chrome
${USERNAME}      sonali.pramanik@tcs.com
${PASSWORD}      0705@Khushi
${CHROME_PATH}   /usr/bin/google-chrome-stable  # Optional: specify the path if necessary

*** Test Cases ***
Login to HackerRank
    [Documentation]    Automates HackerRank login and performs basic operations.
    ${options}=    Create Chrome Options
    Setup ChromeDriver
    Open Browser       ${URL}   ${BROWSER}    options=${options}    chrome_binary=${CHROME_PATH}
    Maximize Browser Window
    Input Text         name=username   ${USERNAME}
    Input Text         name=password   ${PASSWORD}
    Click Button       xpath=//button[@type='submit']
    Close Browser

*** Keywords ***
Create Chrome Options
    [Documentation]    Creates and returns Chrome options for headless mode.
    ${options}=    Create Dictionary    headless=True    no-sandbox=True    disable-dev-shm-usage=True
    RETURN    ${options}

Setup ChromeDriver
    [Documentation]    Set up the ChromeDriver using webdriver-manager.
    Run Process    python    -c    "from webdriver_manager.chrome import ChromeDriverManager; print(ChromeDriverManager().install())"    shell=True

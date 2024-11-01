*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login to Herokuapp
    Input Text    //input[@id='username']    tomsmith 
    Input Password    //input[@id='password']    SuperSecretPassword!
    Click Element    //button[@type='submit']

*** Test Cases ***
TC:1 Login gan
    Open Browser    https://the-internet.herokuapp.com/login    browser=Chrome
    Login to Herokuapp
    Element Text Should Be    locator=//h4    expected=Welcome to the Secure Area. When you are done click logout below.
    Capture Page Screenshot
    Close Browser
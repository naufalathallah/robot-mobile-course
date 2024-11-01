*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://the-internet.herokuapp.com/
${linkAbTest}    //a[text()="A/B Testing"]

*** Keywords ***
A/B Testing Variation
    ${h3Text}    Get Text    //h3
    Run Keyword If    "${h3Text}"=="A/B Test Control"    Contains A/B Test Control
    Run Keyword If    "${h3Text}"=="A/B Test Variation 1"    Contains A/B Test Variation 1
    

Contains A/B Test Control
    Log    text contain Contains A/B Test Control

Contains A/B Test Variation 1
    Log    text contain Contains A/B Test Variation 1

*** Test Cases ***
TC AB TEST
    Open Browser    ${url}    Chrome
    Click Element    ${linkAbTest}
    A/B Testing Variation
    Close Browser
    
*** Settings ***
Documentation       This is my second test case
Resource    ../resources/resources.robot

*** Test Cases ***
TEST
    [Tags]    demo2    resources
    Log My Specific Username And Password   ${DICTIONARY}[username]    ${DICTIONARY}[password] 
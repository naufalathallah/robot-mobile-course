*** Settings ***
Documentation       This is my first test case
Library             OperatingSystem

*** Keywords ***

*** Variables ***
${MY-VARIABLE}    my test variable
${MY-VARIABLE2}    my sec test variable
${txtAreaSearchGoogle}    //*[@id="APjFqb"]

@{LIST}    test1    test2    test3    test4

&{DICTIONARY}    username=testuser    password=demo

*** Test Cases ***
TEST
    [Tags]    demo
    Log    message=${MY-VARIABLE}
    Log    message=${MY-VARIABLE2}
    Log    message=${txtAreaSearchGoogle}
    Log    message=eaaaaaa
    Log    message=${LIST}[1]
    Log    ${DICTIONARY}[username]
    Log    ${DICTIONARY}[password]


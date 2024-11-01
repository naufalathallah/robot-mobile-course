*** Settings ***
Documentation       This is my first test case
Library             OperatingSystem

*** Keywords ***
Log My Username
    Log    ${DICTIONARY}[username]

Log My Password
    Log    ${DICTIONARY}[password]

Log My Username And Password 1
    Log    ${DICTIONARY}[username]
    Log    ${DICTIONARY}[password]

Log My Username And Password 2
    Log My Username
    Log My Password

Log My Specific Username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Specific Password
    [Arguments]    ${PASSWORD}
    Log    ${PASSWORD}

Log My Specific Username And Password
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log    ${USERNAME}
    Log    ${PASSWORD}

Log My Username And Password Specific
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log My Specific Username    USERNAME=${USERNAME}
    Log My Specific Password    PASSWORD=${PASSWORD}

*** Variables ***
${MY-VARIABLE}    my test variable
${MY-VARIABLE2}    my sec test variable
${txtAreaSearchGoogle}    //*[@id="APjFqb"]

@{LIST}    test1    test2    test3    test4

&{DICTIONARY}    username=testuser    password=demo
&{DICTIONARY2}    username=testuser2    password=demo2

*** Test Cases ***
TEST
    [Tags]    demo
    Log    message=${MY-VARIABLE}
    Log    message=${MY-VARIABLE2}
    Log    message=${txtAreaSearchGoogle}
    Log    message=eaaaaaa
    Log    message=${LIST}[1]
    Log My Username
    Log My Password
    Log My Username And Password 1
    Log My Username And Password 2
    Log My Specific Username    USERNAME=${DICTIONARY}[username]
    Log My Specific Username    USERNAME=${DICTIONARY2}[username]
    Log My Specific Username And Password    USERNAME=${DICTIONARY}[username]    PASSWORD=${DICTIONARY}[password] 
    Log My Specific Username And Password    USERNAME=${DICTIONARY2}[username]    PASSWORD=${DICTIONARY2}[password] 
    Log My Username And Password Specific    ${DICTIONARY}[username]    ${DICTIONARY}[password] 


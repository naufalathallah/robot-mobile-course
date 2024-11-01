*** Settings ***
Documentation       This is reusable resources

*** Keywords ***
Log My Specific Username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Specific Password
    [Arguments]    ${PASSWORD}
    Log    ${PASSWORD}

Log My Specific Username And Password
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
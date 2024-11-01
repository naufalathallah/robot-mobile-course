*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://localhost:4723
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   13
${DEVICE_NAME}        M2101K7BNY
${AUTOMATION_NAME}    UIAutomator2
${APP_PACKAGE}        com.temandiabetes.android
${APP_ACTIVITY}       .MainActivity
${AUTO_GRANT_PERMISSIONS}   true

${EMAIL}              api100@yopmail.com
${PASSWORD}           Tdautomate123!
${INPUT_EMAIL}        accessibility_id=inputEmail
${INPUT_PASSWORD}     accessibility_id=inputPassword
${BTN_SUBMIT}         accessibility_id=btnSubmit
${BTN_MASUK}          accessibility_id=btnMasuk

*** Keywords ***
Input Login Details
    [Documentation]    Enter email and password.
    Wait Until Page Contains Element    ${INPUT_EMAIL}    10s
    Input Text    ${INPUT_EMAIL}    ${EMAIL}
    Input Password    ${INPUT_PASSWORD}    ${PASSWORD}

Click Login Button If Visible
    [Documentation]    Cek jika tombol Masuk terlihat, lalu klik.
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${BTN_MASUK}
    Run Keyword If    ${present}    Click Element    ${BTN_MASUK}

*** Test Cases ***
Open App and Log
    [Documentation]    Open the Teman Diabetes app, wait for 5 seconds, and log a message.
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}
    Sleep    10s
    Click Login Button If Visible
    Input Login Details
    Click Element    ${BTN_SUBMIT}
    Sleep    5s
    Log    The app has been opened successfully.
    Close Application
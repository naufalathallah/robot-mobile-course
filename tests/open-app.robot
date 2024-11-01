*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://localhost:4723
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   13
${DEVICE_NAME}        M2101K7BNY
${AUTOMATION_NAME}    UIAutomator2
${APP_PACKAGE}        com.temanbumil.android
${APP_ACTIVITY}       com.temanbumil.android.MainActivity
${AUTO_GRANT_PERMISSIONS}   true

*** Test Cases ***
Open App and Log
    [Documentation]    Open the Teman Bumil app, wait for 5 seconds, and log a message.
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}
    Sleep    5s
    Log    The app has been opened successfully.
    Close Application
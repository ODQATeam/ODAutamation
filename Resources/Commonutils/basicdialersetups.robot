*** Settings ***
Library    OperatingSystem
Library    AppiumLibrary
*** Variables ***
${REMOTE_URL}         http://localhost:4723/wd/hub
${device}             01994096A3000842
${KEYCODE_HOME}       3
${phonenum}           01005400481
${search box}         xpath=//*[contains(@resource-id,':id/search_box_collapsed')]
${name}=              محمود
*** Keywords ***
Luanch Dialer
    Open Application  ${REMOTE_URL}   platformName=Android  deviceName=${device}    udid=${device}    appPackage=com.orange.mea.phone    appActivity=DialtactsActivity    unicodeKeyboard=True

Custome scroll down
    [Arguments]     ${dy}=10
    ${output}=      run     adb -s ${device} shell input swipe 24 682 20 202 100
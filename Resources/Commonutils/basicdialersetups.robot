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
    #Capture Page Screenshot     unlock_apk-debug.apk.png
    # Press Keycode        ${KEYCODE_HOME}
    # Click Element        ${phonedialer}
    Wait Until Page Contains Element    ${search box}    1s

Custome scroll down
    [Arguments]     ${dy}=10
    ${output}=      run     adb -s ${device} shell input swipe 24 682 20 202 100
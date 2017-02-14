*** Settings ***
Library        AppiumLibrary  run_on_failure=Log Source
Library        OperatingSystem
Library        String
*** Variables ***
${REMOTE_URL}         http://127.0.0.2:3456/wd/hub
${device}             02003106A2100845
${KEYCODE_HOME}       3
${phonenum}           01096363566
${contacts_tab}        xpath=//*[contains(@content-desc,'الأرقام') ]
${contact_name}        xpath=//*[contains(@class,'android.widget.TextView') and contains (@name,'Adan Singh')]
${favorite}            xpath=//*[contains(@id, 'com.orange.mea.phone:id/call_sheet_title_favorite_button')]
*** Test Cases ***
add contact to favorites
    Open Application    ${REMOTE_URL}   platformName=Android  deviceName=${device}  app=${CURDIR}/Dialer-mea-debug-app-0.1.1.apk
    Click Element    ${contacts_tab}
    Click Element    ${contact_name}
    Click Element    ${favorite}
    log  Hello
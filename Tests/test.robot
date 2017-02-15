*** Settings ***
Library        AppiumLibrary  run_on_failure=Log Source
Library        OperatingSystem
Library        String
Resource       ../Resources/Commonutils/basicdialersetups.robot
Resource       ../Resources/POS/Home.robot
*** Variables ***
#${REMOTE_URL}        http://127.0.0.2:3456/wd/hub
${device}             01994096A3000842
${KEYCODE_HOME}       3
${phonenum}           01005400481
${contacts_tab}        xpath=//*[@text='الهاتف']
${contacts}				xpath=//*[@content-desc='الأرقام']
#${contact_name}       xpath=//*[contains(@class,'android.widget.TextView') and contains (@name,'Adan Singh')]
#${favorite}           xpath=//*[contains(@id, 'com.orange.mea.phone:id/call_sheet_title_favorite_button')]
*** Test Cases ***
#C:\Users\tffw2373\PycharmProjects\ODTestAutomation\ODAutamation\Resources\Commonutils\basicdialersetups.robot
add contact to favorites
    Luanch Dialer
    Click Element    ${contacts_tab}
    Click Element    ${contacts}
    #Click Element    ${favorite}
    log  Hello
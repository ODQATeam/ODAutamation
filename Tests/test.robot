*** Settings ***
Library        AppiumLibrary  run_on_failure=Log Source
Library        OperatingSystem
Library        String
Resource       ../Resources/Commonutils/basicdialersetups.robot
Resource       ../Resources/POS/Home.robot
Test Setup      Launch dialer
Test Teardown   Close dialer app
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
Env Smoke Test
    #Launch Dialer
    Click Element    ${contacts_tab}
    Click Element    ${contacts}
    Click Element    xpath=//*[@class='android.widget.ImageView'][@content-desc='Favorites' or @content-desc='المفضله']

Test home kwds
    [Tags]  home
    given navigate to call log
    when launch dialpad
    then page should contain element  xpath=//*[@resource-id='com.orange.mea.phone:id/digits']

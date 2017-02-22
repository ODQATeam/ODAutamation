*** Settings ***
Library        AppiumLibrary  run_on_failure=Log Source
Library        OperatingSystem
Library        String
Resource       ../Resources/Commonutils/basicdialersetups.robot
Resource       ../Resources/POS/Home.robot
Resource       ../Resources/POS/Dialtacts.robot

Test Setup      Launch dialer
Test Teardown   Close dialer app
*** Variables ***
#${REMOTE_URL}        http://127.0.0.2:3456/wd/hub
${device}             01994096A3000842
${KEYCODE_HOME}       3
${phonenum}           01005400481
${contacts_tab}       xpath=//*[@text='الهاتف']
${contacts}			  xpath=//*[@content-desc='الأرقام']
#${contact_name}       xpath=//*[contains(@class,'android.widget.TextView') and contains (@name,'Adan Singh')]
#${favorite}           xpath=//*[contains(@id, 'com.orange.mea.phone:id/call_sheet_title_favorite_button')]
#${dial up digit}         xpath=//*[@text='${ELEMENT}' and contains(@resource-id,':id/dialpad_key_number')]
${keys}     01005400481
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
    And dial a phone number  01005400481
    And dial the number
    then wait until page contains element  xpath=//*[contains(@resource-id,'dialpad_container')]

Test get digit
    [Tags]  Dialtacts
    ${rslt}     get digit locator  1
    log to console  ${rslt}

Test construct phone locators
    [Tags]  test1
    @{ITEMS}=        Split String To Characters    ${keys}
        :FOR    ${ELEMENT}    IN    @{ITEMS}
        \        ${locator}     Get digit locator       ${Element}
        \        Sleep    1s
        \        Log To Console    ${locator}

Test dial new number the add new should appear
    [Tags]  dialtoadd
    given navigate to call log
    when launch dialpad
    And dial a phone number  010054003
    then Add to contacts visible


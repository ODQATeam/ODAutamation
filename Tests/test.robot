*** Settings ***
Library        AppiumLibrary  run_on_failure=Log Source
Library        OperatingSystem
Library        String
Resource       ../Resources/Commonutils/basicdialersetups.robot
Resource       ../Resources/POS/Home.robot

*** Variables ***
${REMOTE_URL}         http://127.0.0.2:3456/wd/hub
${device}             02003106A2100845
${KEYCODE_HOME}       3
${phonenum}           01096363566
${contacts_tab}        xpath=//*[contains(@content-desc,'الأرقام') ]
${contact_name}        xpath=//*[contains(@class,'android.widget.TextView') and contains (@name,'Adan Singh')]
${favorite}            xpath=//*[contains(@id, 'com.orange.mea.phone:id/call_sheet_title_favorite_button')]
*** Test Cases ***
Env Smoke Test
    #Luanch Dialer
    Click Element    ${contacts_tab}
    Click Element    ${contacts}
    Click Element    xpath=//*[@class='android.widget.ImageView'][@content-desc='Favorites' or @content-desc='المفضله']
    log  Hello
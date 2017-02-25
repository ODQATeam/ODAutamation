*** Settings ***
Library         AppiumLibrary
*** Variables ***
${View_contact_page}        xpath=//*[@resource-id='com.orange.mea.phone:id/call_sheet_layout']
${Toggle_favorite}          xpath=//*[@resource-id='com.orange.mea.phone:id/call_sheet_title_favorite_button']
${Edit_pen}                 xpath=//*[@resourc-id='com.orange.mea.phone:id/call_sheet_title_contact_button']
${Contact_more_menu}        xpath=//*[@resourc-id='com.orange.mea.phone:id/call_sheet_title_more_button']
${Contact_name}             xpath=//*[@resourc-id='com.orange.mea.phone:id/contact_name']
${Contact_view_mobile}      xpath=//*[@resource-id='com.orange.mea.phone:id/callSheetPrimaryInfo']
${Contact_view_call}        xpath=//*[@resource-id='com.orange.mea.phone:id/callSheetPrimaryImage']
${Contact_view_message}     xpath=//*[@resource-id='com.orange.mea.phone:id/callSheetSecondaryImage']
${Contact_history_log}      xpath=//*[@resource-id='com.orange.mea.phone:id/layout']
${Contact_more_items}       xpath=//*[@resource-id='android:id/title']
${Contact_delete}           ${Contact_more_items}[@text='مسح']
${Contact_share}            ${Contact_more_items}[@text='مشاركه']
${Contact_pane}             ${Contact_more_items}[contains(@text,'حظر المتصل')]
${Contact_blocked_icon}     xpath=//*[@resource-id='com.orange.mea.phone:id/blocked_icon']
${Delete_warning}           xpath=//*[@resource-id='android:id/message']
${Contact_delete_confirm}    xpath=//*[@resource-id='android:id/button1']
${Contact_delete_cancel}    xpath=//*[@resource-id='android:id/button2']

*** Keywords ***
Verify contact page loaded
    wait until page contains element  ${View_contact_page}

Toggle favorite flage
    click element  ${Toggle_favorite}

Edit contact info
    click element  ${Edit_pen}

Open contact more menu
    click element  ${Contact_more_menu}

Delete contact
    click element  ${Contact_delete}

Share contact
    click element  ${Contact_share}

Pane contact
    click element  ${Contact_share}

Assert contact blocked
    wait until page contains element  ${Contact_blocked_icon}

Assert contact not blocked
    wait until page does not contain element  ${Contact_blocked_icon}

Assert sharing screen
    page should contain element  locator for share section

Assert delete warning message
    page should contain element  ${Delete_warning}

Cancel delete contact
    click element  ${Contact_delete_cancel}

Confirm delete contact
    click element  ${Contact_delete_confirm}
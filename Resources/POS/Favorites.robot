*** Settings ***
Library         AppiumLibrary
*** Variables ***
${Favorite_page}        xpath=//android.widget.TextView[@text='المفضله' or @text='Favorite']
${Contact_cards}        xpath=//*[@resource-id='com.orange.mea.phone:id/contact_tile']
${Contact_card_names}    xpath=//*[@resource-id='com.orange.mea.phone:id/contact_tile_name']
*** Keywords ***
Verify favorite page loaded
    page should contain element  ${Favorite_page}

Call favorite by name
    [Arguments]  ${name}
    click element  ${contact_card_names}[@text='${name}']/../../android.widget.ImageView

Call favorite by index
    [Arguments]  ${index}
    click element  xpath=//*[@resource-id='com.orange.mea.phone:id/contact_tile_image'][${index}]

Open contact page by name
    [Arguments]  ${name}
    click element  ${contact_card_names}[@text='${name}']/../android.widget.ImageView

Open contact page by index
    [Arguments]  ${index}
    click element  ${contact_card_names}[index]/../android.widget.ImageView

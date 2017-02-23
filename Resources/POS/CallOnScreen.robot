*** Settings ***
Library         AppiumLibrary
Library         String
*** Variables ***
${Call_status}             xpath=//android.widget.TextView[@resource-id='com.orange.mea.phone:id/callStateLabel']
${Call_control_pannel}     xpath=//*[@resource-id='com.orange.mea.phone:id/callButtonFragment']
${Callee_name}             xpath=//android.widget.TextView[@resource-id='com.orange.mea.phone:id/name']
${Phone_number}            xpath=//android.widget.TextView[@resource-id='com.orange.mea.phone:id/phoneNumber']
${Toggle_speaker}          xpath=//android.widget.ToggleButton[@resource-id='com.orange.mea.phone:id/audioButton']
${Toggle_mute}             xpath=//android.widget.ToggleButton[@resource-id='com.orange.mea.phone:id/muteButton']
${Dial_btn}                xpath=//android.widget.ToggleButton[@resource-id='com.orange.mea.phone:id/dialpadButton']
${Toggle_hold}             xpath=//android.widget.ToggleButton[@resource-id='android.widget.ToggleButton']
${Add_callee}              xpath=//android.widget.ToggleButton[@resource-id='com.orange.mea.phone:id/addButton']
${End_call}                xpath=//android.widget.ImageButton[@resource-id='com.orange.mea.phone:id/floating_end_call_action_button']
*** Keywords ***
Verify call on screen
    page should contain element  ${call_control_pannel}

Verify callee name
    [Arguments]  ${callee}
    ${name}  get element attribute  ${Callee_name}  text
    #element attribute should match
    ${name}  convert to lowercase  ${name}
    ${callee}  convert to lowercase  ${callee}
    should be equal as strings  ${callee}  ${name}

Verify calee phone number
    [Arguments]  ${phone}
    Element attribute should match  ${phone_number}  text  ${phone}

Verify call status
    [Arguments]  ${status}
    ELEMENT ATTRIBUTE SHOULD MATCH  ${call_status}  text  ${status}

Add calee
    click element  ${Add_callee}

End the call
    click element  ${End_call}

Toggle mute
    click element  ${toggle_mute}

Toggle speaker
    click element  ${toggle_speaker}

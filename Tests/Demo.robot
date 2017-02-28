*** Settings ***
Resource       ../Resources/Commonutils/basicdialersetups.robot
Resource       ../Resources/POS/Home.robot
Resource       ../Resources/POS/Contacts.robot
Resource       ../Resources/POS/ViewContact.robot
Resource       ../Resources/POS/CallLog.robot
*** Test Cases ***
Add a favorite from contacts
    [Tags]  Favorits    Core
    Navigate to contacts
    sleep  1s
    Contacts.Select contact by name    Mahmoud
    ViewContact.Verify contact page loaded
    ViewContact.Toggle favorite flage

Delete call event from long press
    [Tags]  CallLog    Core    debugit
    Navigate to call log
    CallLog.Verify call log loaded
    CallLog.Select entry by index  1
    CallLog.Delete selected entry
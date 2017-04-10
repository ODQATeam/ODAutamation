*** Settings ***
Library         AppiumLibrary
Resource       ../Resources/POS/Home.robot

*** Variables ***
# xpath = classpath[@IdentificationAttributeName='IdentificationAttributeValue']
${myOrangeLink}    xpath=//android.widget.ImageView[@content-desc='VAS']
${myPlan}          xpath=//android.widget.TextView[@text='My plan' or @text='نوع العرض']
${myBalance}       xpath=//android.widget.TextView[@text='My balance' or @text='الرصيد']
${Recharge}        xpath=//android.widget.TextView[@text='Recharge' or @text='اعاده الشحن']
${sos}             xpath=//android.widget.TextView[@text='SOS' or @text='رصيد الطوارئ']
${buyBundle}       xpath=//android.widget.TextView[@text='Buy bundles' or @text='شراء حزم']
${payBills}        xpath=//android.widget.TextView[@text='Pay bills' or @text='دفع الفواتير']
${tikramPoints}    xpath=//android.widget.TextView[@text='Tikram points' or @text='برنامج تكرم للمكافئات']
${orangeOffers}    xpath=//android.widget.TextView[@text='Orange offers' or @text='عروض Orange']
${orangeServices}  xpath=//android.widget.TextView[@text='Orange services' or @text='خدمات Orange']
${deviceCatalog}   xpath=//android.widget.TextView[@text='Devices Catalog' or @text='كتالوج الاجهزة']
${acceptPopupButton}    xpath=//android.widget.Button[@text='Ok'  or @text='موافق']

#(keywords-variables-libraries) should begin with capital letter

*** Keywords ***

Verify my plan link exist
    click element   ${myOrangeLink}
    page should contain element    ${myPlan}

Verify my balance link exist
    click element   ${myOrangeLink}
    page should contain element    ${myBalance}

Verify Recharge link exist
    click element   ${myOrangeLink}
    page should contain element    ${Recharge}

Verify sos link exist
    click element   ${myOrangeLink}
    page should contain element    ${sos}

Verify buy Bundle link exist
    click element   ${myOrangeLink}
    page should contain element    ${buyBundle}

Verify payBills link exist
    click element   ${myOrangeLink}
    page should contain element    ${payBills}

Verify tikram Points link exist
    click element   ${myOrangeLink}
    page should contain element    ${tikramPoints}

Verify orange Offers link exist
    click element   ${myOrangeLink}
    page should contain element    ${orangeOffers}

Verify orange services exist
    click element   ${myOrangeLink}
    page should contain element    ${orangeServices}

Verify device Catalog link exist
    click element   ${myOrangeLink}
    page should contain element    ${deviceCatalog}

Verify my plan open right page
    click element   ${myOrangeLink}
    click element   ${myPlan}
    click element   ${acceptPopupButton}
    page should contain element  ${myPlan}

Verify my balance open right page
    click element   ${myOrangeLink}
    click element   ${myBalance}

Verify Recharge open right page
    click element   ${myOrangeLink}
    click element   ${Recharge}

Verify sos open rigth page
    click element   ${myOrangeLink}
    click element   ${sos}

Verify buy Bundle open right page
    click element   ${myOrangeLink}
    click element   ${buyBundle}

Verify payBills open right page
    click element   ${myOrangeLink}
    click element   ${payBills}

Verify tikram Points open right page
    click element   ${myOrangeLink}
    click element   ${tikramPoints}

Verify orange Offers open right page
    click element   ${myOrangeLink}
    click element   ${orangeOffers}

Verify orange services open right page
    click element   ${myOrangeLink}
    click element   ${orangeServices}

Verify device Catalog open right page
    click element   ${myOrangeLink}
    click element   ${deviceCatalog}







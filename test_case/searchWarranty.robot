*** Settings ***
resource            ../variables/variables.robot
resource            ../keywords/searchWarrantyKeyword.robot
Library             Selenium2Library
Library             DataDriver    ../testdata/searchWarranty.csv    encoding=utf_8    dialect=excel    include=P1



suite setup     Open "safari" browser
suite teardown  Close Browser
Test Template   search stock warranty


*** Test case ***
search warranty ${brokerName}/${stockID}/${warrantyType}/${numOfDays}/${inPercentage}/${outPercentage}




*** Keywords ***
search stock warranty
    [Arguments]     ${brokerName}   ${stockID}   ${warrantyType}    ${numOfDays}    ${inPercentage}     ${outPercentage}
    select broker name     ${brokerName}
    enter stock id          ${stockID}
    select warranty type    ${warrantyType}
    enter how many days left    ${numOfDays}
    set stock price interval   ${inPercentage}     ${outPercentage}
    click search button
    should display warranty search result




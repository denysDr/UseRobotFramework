*** Settings ***
Library  Selenium2Library
Suite Setup  Go to hotline
Suite Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}   https://hotline.ua/
${BROWSER}  chrome

*** Test Cases ***
Find the first link with iPhone7 and click
    Find and check results  iPhone7  iPhone7

*** Keywords ***
Find and check results
    [Arguments]  ${searchkey}  ${result}
    Input Text  id=searchbox   ${searchkey}
    Click Button  id=doSearch
    Wait Until Page Contains  ${result}
    Click Link  xpath=//a[contains(text(), "iPhone7")]
    Wait Until Page Contains  ${result}

Go to hotline
    Open Browser  ${HOMEPAGE}  ${BROWSER}
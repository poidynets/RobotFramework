*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Ghost INSTANCE}  ${null}
${Ghost BASE URL}  https://Ghostgo.net/Ghostgo/#details/instance/
${MONITORING ELEMENT}  id=tableview-123


*** Keywords ***
Move to Ghostgo instance Home Page
    Go To  ${Ghost BASE URL}${Ghost INSTANCE}
    Wait Until Page Contains  ${Ghost INSTANCE} (approved)

Check for Monitoring Alert and retrieve data if such
    ${critical_monitors}  Get Text   id=tbtext-234
    Log To Console  ${critical_monitors}
    ${critical_monitors}  Run Keyword If    '${critical_monitors}'=='No data to display'     Alert is missing
    ...  ELSE IF  'Displaying' in '${critical_monitors}'   Alert is presented 
    ...  ELSE  Invalid Alert section

Alert is missing
    Log To Console    Lack of alerts 

Alert is presented
    Log To Console    Monitoring alert is presented
    Get Text  ${MONITORING ELEMENT}

    
Invalid Alert section
    Log To Console    We cannot see alerts list status. Please check what's wrong
    

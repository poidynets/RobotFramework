*** Settings ***
Documentation        This suite is developed for NCS Daily Technical Verification automation 
Resource  ../Resources/Common.robot
Resource  ../Resources/GhostWebGUI.robot
Test Setup  Begin Web Test 
Test Teardown  End Web Test


*** Test Cases ***
Test Case 1 gh-weblogic-prod01: Check status of related Ghost instatce
    [Documentation]  Will add here related test info
    [Tags]  weblogic-prod01
    BuiltIn.Set test variable    ${Ghost INSTANCE}    gh-weblogic-prod01
    GhostWebGUI.Move to Ghost instance Home Page
    GhostWebGUI.Check for Monitoring Alert and retrieve data if such
Test Case 2 gh-weblogic-preprod01: Check status of related Ghost instatce
    [Documentation]  Will add here related test info
    [Tags]  weblogic-preprod01
    BuiltIn.Set test variable    ${Ghost INSTANCE}    gh-weblogic-preprod01
    GhostWebGUI.Move to Ghost instance Home Page
    GhostWebGUI.Check for Monitoring Alert and retrieve data if such


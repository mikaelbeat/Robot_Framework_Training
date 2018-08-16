*** Settings ***
Library    SeleniumLibrary   

*** Keywords ***

Verify that product has found
    Wait Until Page Contains    results for "Vinland Saga 1"
    
Select product from search results
     Click Link    css=#result_0 a.s-access-detail-page
     Wait Until Page Contains    Back to search results
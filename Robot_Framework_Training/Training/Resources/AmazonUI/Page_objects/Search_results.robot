*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${RESULTS} =  results for
${PRODUCT_LINK} =  css=#result_0 a.s-access-detail-page
${BACK_LINK} =  Back to search results

*** Keywords ***
Verify that product has found
    Wait Until Page Contains    ${RESULTS} "${SEARCH_TERM}"
    
Select product from search results
     Click Link    ${PRODUCT_LINK}
     Wait Until Page Contains    ${BACK_LINK}
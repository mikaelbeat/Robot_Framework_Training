*** Settings ***
Library    SeleniumLibrary     

*** Variables ***
${SEARCHBOX} =  id=twotabsearchtextbox
${SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Load
    Go To    ${URL}
    
Verify page
    Wait Until Page Contains    Your Amazon.com    
    
Enter product to search field
    Input Text    ${SEARCHBOX}    ${SEARCH_TERM}
    
Click search button
    Click Button    ${SEARCH_BUTTON}
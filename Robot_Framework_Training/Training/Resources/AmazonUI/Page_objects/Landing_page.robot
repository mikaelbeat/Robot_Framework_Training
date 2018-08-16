*** Settings ***
Library    SeleniumLibrary     

*** Keywords ***
Load
    Go To    ${URL}
    
Verify page
    Wait Until Page Contains    Your Amazon.com    
    
Enter product to search field
    Input Text    id=twotabsearchtextbox    ${SEARCH_TERM}
    
Click search button
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
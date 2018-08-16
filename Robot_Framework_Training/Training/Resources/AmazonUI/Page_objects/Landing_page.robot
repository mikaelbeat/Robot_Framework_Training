*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Load
    Go To    http://www.amazon.com
    
Verify page
    Wait Until Page Contains    Your Amazon.com    
    
Enter product to search field
    Input Text    id=twotabsearchtextbox    Vinland Saga 1
    
Click search button
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
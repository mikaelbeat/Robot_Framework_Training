# Robot -d Results Tests/Demo.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  =  gc
${url}  =  http://www.amazon.com

*** Test Cases ***
User must sign in to check out product
    Open Browser    about:blank  gc
    Go To    http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text    id=twotabsearchtextbox    Vinland Saga 1
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    Vinland Saga 1
    Click Link    css=#result_0 a.s-access-detail-page
    Wait Until Page Contains    Back to search results
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart
    Click Link    id=hlb-ptc-btn-native
    Page Should Contain    Sign in
    Close Browser

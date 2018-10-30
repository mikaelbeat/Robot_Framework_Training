# Robot -d Results Tests/Demo.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  =   gc
${url}  =   http://www.amazon.com

*** Test Cases ***
User must sign in to check out product
    Open Browser  about:blank  ${browser}
    Go To  ${url}
    Wait Until Page Contains  Your Amazon.com
    Input Text
    Click Button
    Wait Until Page Contains
    Click Link
    Wait Until Page Contains
    Click Button
    Wait Until Page Contains
    Click Link
    Page Should Contain Element
    Element Text Should Be
    Close Browser
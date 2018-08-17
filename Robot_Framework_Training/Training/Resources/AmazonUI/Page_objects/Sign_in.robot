*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_TEXT} =  Sign in
*** Keywords ***
Verify Page Loaded
         Page Should Contain    ${SIGN_IN_TEXT}
         

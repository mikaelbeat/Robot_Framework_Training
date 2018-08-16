*** Settings ***
Library    SeleniumLibrary      

*** Keywords ***
Begin web test
    Open Browser    about:blank    ${BROWSER}
     
End web test
    Close Browser  
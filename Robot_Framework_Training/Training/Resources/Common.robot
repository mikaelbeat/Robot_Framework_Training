*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Begin web test
    Open Browser    about:blank    gc
     
End web test
    Close Browser  
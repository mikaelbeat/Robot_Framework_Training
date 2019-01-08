# Robot -d Results/Amazon Amazon.robot

# For running all tests in one foldel
# Robot -d Results Tests

*** Settings ***
Documentation    This is my training project
Resource    ../Resources/AmazonUI/AmazonUI.robot
Resource    ../Resources/Common.robot
Test Setup    Begin web test
Test Teardown    End web test

*** Variables ***
${BROWSER} =  gc
${URL} =  http://www.amazon.com
${SEARCH_TERM} =  Vinland Saga 1

*** Test Cases ***
User must be signed in to checkout products
     [Documentation]    This is some basic info about the test
     [Tags]    Smoke
     AmazonUI.Open webpage
     AmazonUI.Search and select product
     AmazonUI.Add product to cart
     AmazonUI.Click checkout
     AmazonUI.Verify sign in page

# Robot -d Results/Selenium_Demo Selenium_Demo.robot

# For running all tests in one foldel
# Robot -d Results Tests

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${browser}  gc
#${url}  http://www.amazon.com
${header}  Your Amazon.com
${search_field}  id=twotabsearchtextbox
${search_term}  Vinland Saga 1
${search_button}  xpath=//*[@id="nav-search"]/form/div[2]/div/input
${search_result}  ${search_term}
${product_link}  css=#result_0 a.s-access-detail-page
${product_page}  Back to search results
${add_to_cart_button}  id=add-to-cart-button
${added_to_cart_confirmation}  Added to Cart
${proceed_to_checkout_button}  id=hlb-ptc-btn-native
${sign_in_form_header}  Sign in

*** Test Cases ***
User must sign in to check out product
  Begin Web Test  http://www.amazon.com   gc

*** Keywords ***
Begin Web Test
    [Arquments] ${url}  ${browser}
    Open Browser    about:blank  ${browser}
    Go To  ${url}
    Wait Until Page Contains  ${header}
    Input Text  ${search_field}  ${search_term}
    Click Button  ${search_button}
    Wait Until Page Contains  ${search_result}
    Click Link  ${product_link}
    Wait Until Page Contains  ${product_page}
    Click Button  ${add_to_cart_button}
    Wait Until Page Contains  ${added_to_cart_confirmation}
    Click Link  ${proceed_to_checkout_button}
    Page Should Contain  ${sign_in_form_header}
    Close Browser

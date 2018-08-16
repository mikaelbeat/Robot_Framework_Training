*** Settings ***
Library    SeleniumLibrary   

*** Keywords ***

Move product to cart
     Click Button    id=add-to-cart-button
     Wait Until Page Contains    Added to Cart
    
Click proceed to checkout
     Click Link    id=hlb-ptc-btn-native
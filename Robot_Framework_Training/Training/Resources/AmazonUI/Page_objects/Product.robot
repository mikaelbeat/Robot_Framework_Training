*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${ADD_TO_CART_BUTTON} =  id=add-to-cart-button 
${ADDED_TO_CART_CONFIRMATION} =  Added to Cart
${PROCEED_TO_CHECKOUT_BUTTON} =  id=hlb-ptc-btn-native

*** Keywords ***
Move product to cart
     Click Button    ${ADD_TO_CART_BUTTON}
     Wait Until Page Contains    ${ADDED_TO_CART_CONFIRMATION}
    
Click proceed to checkout
     Click Link    ${PROCEED_TO_CHECKOUT_BUTTON}
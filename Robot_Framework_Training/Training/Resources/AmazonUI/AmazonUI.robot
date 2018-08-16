*** Settings ***
Library    SeleniumLibrary   
Resource    Page_objects/Landing_page.robot 
Resource    Page_objects/Search_results.robot
Resource    Page_objects/Product.robot
Resource    Page_objects/Sign_in.robot

*** Keywords ***
Open webpage
     Landing_page.Load
     Landing_page.Verify page
     
Search and select product
     Landing_page.Enter product to search field
     Landing_page.Click search button
     Search_results.Verify that product has found
     Search_results.Select product from search results
     
Add product to cart
     Product.Move product to cart

Click checkout
     Product.Click proceed to checkout
     
Verify sign in page
     Sign_in.Verify Page Loaded
*** Settings ***
Documentation     A test suite with a single test case for adding items to cart
Resource          resource.robot

Metadata          Author        Zuzana Formanek
Metadata          Version       0.1
Metadata          Created On    Nov-03-2020

*** Test Cases ***
Add to Cart
    [Documentation]   Add two most expensive mobile phones to cart and check the number of items in cart icon matches the number of added items
    Open Browser On Main Page
    Go To Category "${CELL_PHONES}"
    Sort Items By Price Asc
    Add "2" Items to Cart
    Go to Cart
    Check "2" Items in Cart
    [Teardown]    Close Browser
*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${BROWSER}                  Chrome
${DELAY}                    0
${CELL_PHONES}              link:Mobilní telefony
${SORT_BY_PRICE_ASC}        link:Od nejdražšího
${BACK_BUTTON}              id:varABackButton
${CART_ICON}                id:basketLink
${CART_ICON_NO_OF_ITEMS}    xpath=//*[@id="basketLink"]/span[2]

*** Keywords ***
Open Browser On Main Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Select "${element}"
    Wait Until Element Is Visible   ${element}    60s
    Scroll Element Into View    ${element}
    Click Element   ${element}

Go To Category "${category_name}"
    Select "${category_name}"

Sort Items By Price Asc
    Select "${SORT_BY_PRICE_ASC}"
    Sleep   3s

Add "${no_of_items}" Items to Cart
    [Documentation]     Add multiple items to cart by iterating over shopping items' div's
    FOR    ${INDEX}    IN RANGE   ${no_of_items}
       ${INDEX}    Evaluate    ${INDEX} + 1
       Select "xpath=//*[@id="boxes"]/div[${INDEX}]/div[2]/div[1]/span/a[1]"
       Go Back To Items Overview
    END

Go to Cart
    Wait Until Element Is Visible   ${CART_ICON}
    Click Element   ${CART_ICON}

Go Back To Items Overview
    Select "${BACK_BUTTON}"

Check "${no_of_items}" Items in Cart
    Wait Until Element Is Visible   ${CART_ICON_NO_OF_ITEMS}
    ${count}=    Get Text    ${CART_ICON_NO_OF_ITEMS}
    Should Be Equal     ${count}         ${no_of_items}
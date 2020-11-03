*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${URL}                      http://www.alza.cz
${BROWSER}                  Chrome
${DELAY}                    0
${CELL_PHONES}              link:Mobilní telefony
${SORT_BY_PRICE}            link:Od nejdražšího
${BUY_FIRST_ITEM}           xpath=//*[@id="boxes"]/div[1]/div[2]/div[1]/span/a[1]
${BUY_SECOND_ITEM}          xpath=//*[@id="boxes"]/div[2]/div[2]/div[1]/span/a[1]
${BACK_BUTTON}              id:varABackButton
${CART}                     id:basketLink


*** Keywords ***
Open Browser To Main Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Select "${element}"
    Wait Until Element Is Visible   ${element}    60s
    Scroll Element Into View    ${element}
    Click Element   ${element}

Go To Category
    Select  ${CELL_PHONES}

Sort Items By Price Asc
    Select  ${SORT_BY_PRICE}

Add Items to Cart
     Select "${BUY_FIRST_ITEM}"
     Go Back To Items Overview
     Select "${BUY_SECOND_ITEM}"
     Go Back To Items Overview

Go to Cart
    Wait Until Element Is Visible   ${CART}
    Click Element   ${CART}

Go Back To Items Overview
    Select "${BACK_BUTTON}"

My Test
    Open Browser    https://www.alza.cz/luxusni-nejdrazsi-mobily/18843445.htm  ${BROWSER}
    Maximize Browser Window
    Add Items to Cart
    Go to Cart
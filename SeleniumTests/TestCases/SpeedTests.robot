*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${speed}=  Get Selenium Speed
    Log To Console  ${speed}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed  3 seconds
    Select Radio Button  Gender  M
    Input Text  name:FirstName  David
    Input Text  name:LastName  John
    Input Text  name:Email  anhc@gmail.com
    Input Text  name:Password  davidjohn
    Input Text  name:ConfirmPassword  davidjohn
    ${speed}=  Get Selenium Speed
    Log To Console  ${speed}
    Close Browser


Timeouts
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Timeout  10 seconds
    Wait Until Page Contains  Registeration
    Select Radio Button  Gender  M
    Input Text  name:FirstName  David
    Input Text  name:LastName  John
    Input Text  name:Email  anhc@gmail.com
    Input Text  name:Password  davidjohn
    Input Text  name:ConfirmPassword  davidjohn
    Close Browser


Implict Wait Test
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit wait  10 seconds
    Select Radio Button  Gender  M
    Input Text  name:FirstName  David
    Input Text  name:LastName  John
    Input Text  name:Email  anhc@gmail.com
    Input Text  name:Password  davidjohn
    Input Text  name:ConfirmPassword  davidjohn
    Close Browser

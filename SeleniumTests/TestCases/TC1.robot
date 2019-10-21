*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    Open Browser  ${url}  ${browser}
    loginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link  xpath://a[@class='ico-login']
    Input Text  id:Email  pavanoltraining@gmail.com
    Input Text  id:Password  Test@123
    Click Element  xpath://input[@class='button-1 login-button']
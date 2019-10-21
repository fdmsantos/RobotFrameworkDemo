*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Title Should Be  nopCommerce demo store
    Click Link  xpath://a[@class='ico-login']
    ${"email_txt"}  set variable  id=Email
    Element Should Be Visible  ${"email_txt"}
    Element Should Be Enabled  ${"email_txt"}
    input text  ${"email_txt"}  JohnDavid@gmail.com
    Sleep  5
    Clear Element Text  ${"email_txt"}
    Sleep  3
    Close Browser
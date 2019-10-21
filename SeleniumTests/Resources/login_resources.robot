*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://admin-demo.nopcommerce.com

*** Keywords ***
Open my Browser
    Open Browser  ${url}  ${browser}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to  ${url}

Input username
    [Arguments]  ${username}
    input text  id:Email  ${username}

Input pwd
    [Arguments]  ${password}
    input text  id:Password  ${password}

click login button
    click element  xpath://input[@class='button-1 login-button']

click logout link
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard

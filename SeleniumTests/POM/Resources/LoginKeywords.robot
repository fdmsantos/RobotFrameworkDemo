*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser  ${SiteUrl}  ${Browser}
    Maximize browser window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}  ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_loginPassword}  ${password}

Click SignIn
    Click Button  ${btn_signIn}

Verify Succesfull Login
    title should be  Find a Flight: Mercury Tours:

Close my browsers
    close all browsers
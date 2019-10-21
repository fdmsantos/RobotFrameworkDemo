*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser  ${appurl}  ${appbrowser}
    Maximize browser window
    ${title}=  get title
    [Return]  ${title}
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    Open Browser  http://demo.automationtesting.in/Windows.html  chrome
    Click Element  xpath://*[@id="Tabbed"]/a/button
    Select Window  title=Sakinalium  | Home
    Click Element  xpath://*[@id="container"]/header/div/div/div[2]/ul/Li[4]/a
    Sleep  3
    Close All Browsers


MultipleBrowsers
    Open Browser  https://www.google.com/  chrome
    Maximize Browser Window

    Sleep  3

    Open Browser  https://www.bing.com/  chrome
    Maximize Browser Window

    Switch Browser  1
    ${title1}=  Get Title
    log to console  ${title1}

    Switch Browser  2
    ${title2}=  Get Title
    log to console  ${title2}

    Sleep  3
    Close All Browsers
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
Navigation Test
    Open Browser  https://www.google.com  chrome
    ${loc}=  Get Location
    log to console  ${loc}
    sleep  3
    go to  https://www.bing.com/
    ${loc}=  Get Location
    log to console  ${loc}
    sleep  3
    go back
    ${loc}=  Get Location
    log to console  ${loc}
    sleep  3
    close browser
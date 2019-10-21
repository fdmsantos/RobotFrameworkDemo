*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}      http://www.newtours.demoaut.com/

*** Test Cases ***
TC1
    ${PageTitle}=  launchBrowser  ${url}  ${browser}
    log to console  ${PageTitle}
    log  ${PageTitle}
    Input Text  name:userName  mercury
    Input Text  name:password  mercury

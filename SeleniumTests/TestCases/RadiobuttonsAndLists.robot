*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Select Radio Button  sex  Female
    Select Radio Button  exp  5
    Select Checkbox  BlackTea
    Select Checkbox  RedTea
    Unselect Checkbox  BlackTea
    Close Browser

Handling DropDownds and Lists
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Select From List By Label  continents  Asia
    Sleep  5
    Select From List By Index  continents  5
    Select From List By Label  selenium_commands  Switch Commands
    Select From List By Label  selenium_commands  WebElement Commands
    Sleep  5
    Unselect From List By Label  selenium_commands  Switch Commands

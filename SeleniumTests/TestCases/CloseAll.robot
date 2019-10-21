*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://demowebshop.tricentis.com/register

*** Test Cases ***
MyTestCase
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Open Browser  http://automationpractice.com/index.php  ${Browser}
  Maximize Browser Window
  Close all Browsers


*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://opensource-demo.orangehrmlive.com/
@{Credentials}  Admin  admin123
&{LoginData}  username=Admin  password=admin123

*** Test Cases ***
TC_001_LoginTest
  Log  This prepaid recharge test
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Do login
  Close Browser
  Log  This is test is Ran by %{USERNAME} on %{PWD}

*** Keywords ***
Do login
  Input Text  id:txtUsername  @{Credentials}[0]
  Input Text  id:txtPassword  &{LoginData}[password]
  Click Element  name:Submit
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
#Library  DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1
Library  DataDriver  ../TestData/LoginData.csv
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login

#*** Test Cases ***  username  password
#Right user empty pwd  admin@yourstore.com  ${EMPTY}
#Right user wrong pass  admin@yourstore.com  xyz
#Wrong user right pass  adm@yourstore.com  admin
#Wrong user empty pass  adm@yourstore.com  ${EMPTY}
#Wrong user wrong pass  adm@yourstore.com  xyz

*** Test Cases ***
LoginTestWithExcel  using  ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    Error message should be visible
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
Login Test
    Open Browser  https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    Input Text  id:txtUsername  Admin
    Input Text  id:txtPassword  admin123
    capture element screenshot  xpath://*[@id="divLogo"]/img  /home/fsantos/Documents/Projects/Outscope/Vodafone/Technology Connectivity Network - Orchestration/Demos/TestingFramework/RobotFrameworkSelenium/Logo.png
    capture page screenshot  /home/fsantos/Documents/Projects/Outscope/Vodafone/Technology Connectivity Network - Orchestration/Demos/TestingFramework/RobotFrameworkSelenium/LoginTC.png
    Close Browser

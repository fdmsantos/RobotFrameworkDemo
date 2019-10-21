*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
Handling Alerts
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Click Element  xpath://*[@id="HTML9"]/div[1]/button  # Opens Alert
    Sleep  1
    Alert Should be Present  Press a button!
    Handle Alert  accept


Testing Frames
    Open Browser  https://seleniumhq.github.io/selenium/docs/api/java/index  chrome
    Select Frame  packageListFrame
    Click Link  org.openqa.selenium
    Unselect Frame

    Select Frame  packageFrame
    Click Link  WebDriver
    Unselect Frame

    Select Frame  classFrame
    Click Link  Help

    Close Browser

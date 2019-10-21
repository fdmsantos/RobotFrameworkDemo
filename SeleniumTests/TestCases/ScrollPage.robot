*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  chrome
    execute javascript  window.scrollTo(0,2500)
    scroll element into view  xpath://table[1]//tbody[1]//tr[105]//td[1]//img[1]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)  # End of the Page
    sleep  5
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  # Starting Point
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
Mouse Actions
    # Right Click/open open context menu
    Open Browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu  xpath://span[@class='context-menu-one btn btn-neutral']
    Click Element  xpath://li[@class='context-menu-item context-menu-icon context-menu-icon-delete']
    handle alert
    sleep  3


    # Double Click Action
    go to  https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://button[contains(text(),'Copy Text')]
    sleep  3


    # Drag and Drop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  id:box6  id:box106
    sleep  3
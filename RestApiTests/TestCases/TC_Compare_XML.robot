*** Settings ***
Library  OperatingSystem
Library  XML
Library  DiffLibrary

*** Test Cases ***
Test
#    ${csvA}=  Get File   ../TestData/example.xml
#    ${csvB}=  Get File   ../TestData/example2.xml
#    Should Be Equal As Strings    ${csvA}    ${csvB}

    Diff Files  ../TestData/example.xml  ../TestData/example2.xml


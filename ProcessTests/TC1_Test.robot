*** Settings ***
Documentation    Suite description
Library  Process
Library  OperatingSystem
*** Test Cases ***
Example of running process
    ${result}=  run process  python  /tmp/helloworld.py
    Should be equal as integers  ${result.rc}  0
    log to console  ${result.rc}
    log to console  ${result.stdout}
    log to console  ${result.stderr}

Example of starting process
    ${handler}=  start process  python  /tmp/helloworld.py
    ${process_id}=  get process id  ${handler}
    log to console  ${process_id}
    ${is_running}  Is Process Running  ${handler}
    log to console  ${is_running}
    Wait For Process  ${handler}
    ${result}=  Get Process Result  ${handler}
    log to console  ${result.rc}
    log to console  ${result.stdout}
    log to console  ${result.stderr}

Operation System Test
    Should Exist  /tmp/hellowsorld.py
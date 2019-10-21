*** Test Cases ***
ForLoop1
  : FOR    ${i}    IN RANGE    1    10
  \  LOG TO CONSOLE  ${i}

ForLoop3withList
    @{nameslist}  create list  john  david  smith  scott
    : FOR  ${i}  IN  @{nameslist}
    \  LOG TO CONSOLE  ${i}

ForLoop4withExit
    @{list}  create list  john  david  smith  scott
    : FOR  ${i}  IN  @{list}
    \  LOG TO CONSOLE  ${i}
    \  exit for loop if  '${i}'=='smith'
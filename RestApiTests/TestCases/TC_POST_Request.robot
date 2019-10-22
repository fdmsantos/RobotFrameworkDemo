*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://restapi.demoqa.com/customer
${city}  Delhi

*** Test Cases ***
Put_CustomerRegistration
    create session  mysession  ${base_url}
    ${body}=  create dictionary  FirstName=foss123  LastName=fsantos123  UserName=fstos123  Password=Raj1234  Email=fntos@ccsint.eu
    ${header}=  create dictionary  Content-Type=application/json
    ${response}=  post request  mysession  /register  data=${body}  headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}

    # VALIDATIONS
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  201

    ${res_body}=  convert to string  ${response.content}
    should contain  ${res_body}  OPERATION_SUCCESS
    should contain  ${res_body}  Operation completed successfully


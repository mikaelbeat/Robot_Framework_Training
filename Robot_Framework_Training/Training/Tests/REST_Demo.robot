# Robot -d Results Tests/REST_Demo.robot

*** Settings ***
Library  RequestsLibrary

*** Variables ***
${url}  https://reqres.in
${uri}  /api/users?page=2
${expected_response}  200

*** Test Cases ***
Get test
  Create Session    getSession    ${url}      verify=true
  ${response}    Get Request    getSession    ${uri}
  log    ${response.status_code}
  log    ${response.text}
  Should Be Equal As Strings    ${response.status_code}    ${expected_response}
  ${pretty_printed_response}    To Json    ${response.text}    true
  log   ${pretty_printed_response}


*** Keywords ***

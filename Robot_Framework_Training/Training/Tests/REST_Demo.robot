# Robot -d Results/REST_Demo Rest_Demo.robot

# For running all tests in one foldel
# Robot -d Results Tests

*** Settings ***
Library  RequestsLibrary

*** Variables ***
${url}  https://reqres.in
${uri}  /api/users?page=2
${expected_response_code}  200
${expected_response}     {"page":2,"per_page":3,"total":12,"total_pages":4,"data":[{"id":4,"first_name":"Eve","last_name":"Holt","avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/marcoramires/128.jpg"},{"id":5,"first_name":"Charles","last_name":"Morris","avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/stephenmoon/128.jpg"},{"id":6,"first_name":"Tracey","last_name":"Ramos","avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/bigmancho/128.jpg"}]}

*** Test Cases ***
Get test
  Create Session    getSession    ${url}      verify=true
  ${response}    Get Request    getSession    ${uri}
  log    ${response.status_code}
  log    ${response.text}
  Should Be Equal As Strings    ${response.text}    ${expected_response}
  Should Be Equal As Strings    ${response.status_code}    ${expected_response_code}
  ${pretty_printed_response}    To Json    ${response.text}    true
  log   ${pretty_printed_response}

*** Keywords ***

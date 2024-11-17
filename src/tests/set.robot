*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter can be set to a desired non-zero value
    Go To  ${HOME_URL}
    Input Text  value  2
    Click Button  Aseta
    Page Should Contain  nappia painettu 2 kertaa

Setting the counter to a negative number sets it to 0
    Go To  ${HOME_URL}
    Input Text  value  -3
    Click Button  Aseta
    Page Should Contain  nappia painettu 0 kertaa
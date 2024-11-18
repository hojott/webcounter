*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has value zero and something is set it becomes the number
    Go To  ${HOME_URL}
    Click Button  Nollaa

    Input Text  text  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa

When counter has value nonzero and something is set it becomes the number
    Go To  ${HOME_URL}
    Click Button  Nollaa

    Click Button  Paina
    Click Button  Paina
    Input Text  text  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
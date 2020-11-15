*** Settings ***
Resource    ../Resources/Common.robot


Documentation    Это пример теста написанного с помощью Robot Framework

Suite Setup    Open Browser    url=NONE    browser=${BROWSER}    remote_url=http://192.168.1.86:4444/wd/hub
Suite Teardown    Close Browser


*** Variables ***
# C переменными уже можно работать через опцию -v
${BROWSER}    chrome
${REQUEST}    Робот Фрэймворк


*** Test Cases ***
Check Search Engines Requests
    FOR    ${ENGINE}    ${SEARCH_FIELD}    IN    &{SEARCH_ENGINES}
        Run Keyword And Continue On Failure	    Check Search Engine    ${ENGINE}    ${SEARCH_FIELD}    ${REQUEST}
    END

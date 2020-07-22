*** Settings ***
Library    SeleniumLibrary

Documentation    Это пример теста написанного с помощью Robot Framework

Test Setup    Open Browser    NONE    ${BROWSER}
Test Teardown    Close Browser


*** Variables ***
# C переменными уже можно работать через опцию -v
${BROWSER}    opera
${REQUEST}    Робот Фрэймворк


*** Test Cases ***
Check search item in title yandex
    Go To    https://yandex.ru
    Input And Submit Search    css=#text    ${REQUEST}
    Verify Page Title Contains    Робот Фреймворк


Check search item in title google
    Go To    https://google.ru
    Input And Submit Search    name=q    ${REQUEST}
    Verify Page Title Contains    Робот Фрэймворк


*** Keywords ***
Verify Page Title Contains    [Arguments]    ${VALUE}
    ${TITLE}    Get Title
    Should Contain      ${TITLE}    ${VALUE}

Input And Submit Search    [Arguments]    ${SELECTOR}    ${VALUE}
    Input Text    ${SELECTOR}     ${REQUEST}
    Press Keys    ${SELECTOR}   ENTER

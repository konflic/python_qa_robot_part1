*** Settings ***
Library    SeleniumLibrary

Documentation    Это пример теста написанного с помощью Robot Framework


*** Variables ***
${BROWSER}    opera
${REQUEST}    Робот Фрэймворк


*** Test Cases ***
Check search item in title yandex
    Open Browser    https://yandex.ru    ${BROWSER}
    Input Text    css=#text     ${REQUEST}
    Press Keys    css=#text    ENTER
    Verify Page Title Contains    Робот Фреймворк
    Close Browser


Check search item in title google
    Open Browser    https://google.ru    ${BROWSER}
    Input Text    name=q     ${REQUEST}
    Press Keys    name=q   ENTER
    Verify Page Title Contains    Робот Фрэймворк
    Close Browser


*** Keywords ***
Verify Page Title Contains    [Arguments]    ${VALUE}
    ${TITLE}    Get Title
    Should Contain      ${TITLE}    ${VALUE}

# TODO: Добавить кейворд для выполнения поиска
# TODO: Добавить сетап и тердаун для тестов
